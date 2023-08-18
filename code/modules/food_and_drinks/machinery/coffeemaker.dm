#define BEAN_CAPACITY 10 //amount of coffee beans that can fit inside the impressa coffeemaker

/obj/machinery/coffeemaker
	name = "coffeemaker"
	desc = "A Modello 3 Coffeemaker that brews coffee and holds it at the perfect temperature of 176 fahrenheit. Takes larger \"G-B-A\" model cartridges. Made by Piccionaia Home Appliances."
	icon = 'icons/obj/medical/chemical.dmi'
	icon_state = "coffeemaker_nopot_nocart"
	base_icon_state = "coffeemaker"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = /obj/item/circuitboard/machine/coffeemaker
	anchored_tabletop_offset = 4
	var/obj/item/reagent_containers/cup/coffeepot/coffeepot = null
	var/brewing = FALSE
	var/brew_time = 20 SECONDS
	var/speed = 1
	/// The coffee cartridge to make coffee from. In the future, coffee grounds are like printer ink.
	var/obj/item/coffee_cartridge/cartridge = null
	/// The accepted cartridge type. Applies only to cartridge based machines.
	var/accepted_cartridge_type = "GBA"
	/// The type path to instantiate for the coffee cartridge the device initially comes with, eg. /obj/item/coffee_cartridge
	var/initial_cartridge = /obj/item/coffee_cartridge
	/// The number of cups left
	var/coffee_cups = 15
	var/max_coffee_cups = 15
	/// The amount of sugar packets left
	var/sugar_packs = 10
	var/max_sugar_packs = 10
	/// The amount of sweetener packets left
	var/sweetener_packs = 10
	var/max_sweetener_packs = 10
	/// The amount of creamer packets left
	var/creamer_packs = 10
	var/max_creamer_packs = 10

	var/static/radial_examine = image(icon = 'icons/hud/radial.dmi', icon_state = "radial_examine")
	var/static/radial_brew = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_brew")
	var/static/radial_eject_pot = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_eject_pot")
	var/static/radial_eject_cartridge = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_eject_cartridge")
	var/static/radial_take_cup = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_cup")
	var/static/radial_take_sugar = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_sugar")
	var/static/radial_take_sweetener = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_sweetener")
	var/static/radial_take_creamer = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_creamer")

/obj/machinery/coffeemaker/Initialize(mapload)
	. = ..()
	if(mapload)
		coffeepot = new /obj/item/reagent_containers/cup/coffeepot(src)
		cartridge = new /obj/item/coffee_cartridge(src)

/obj/machinery/coffeemaker/deconstruct()
	coffeepot?.forceMove(drop_location())
	cartridge?.forceMove(drop_location())
	return ..()

/obj/machinery/coffeemaker/Destroy()
	QDEL_NULL(coffeepot)
	QDEL_NULL(cartridge)
	return ..()

/obj/machinery/coffeemaker/Exited(atom/movable/gone, direction)
	if(gone == coffeepot)
		coffeepot = null
	if(gone == cartridge)
		cartridge = null
	return ..()

/obj/machinery/coffeemaker/RefreshParts()
	. = ..()
	speed = 0
	for(var/datum/stock_part/micro_laser/laser in component_parts)
		speed += laser.tier

/obj/machinery/coffeemaker/examine(mob/user)
	. = ..()
	if(!in_range(user, src) && !issilicon(user) && !isobserver(user))
		. += span_warning("You're too far away to examine [src]'s contents and display!")
		return

	if(brewing)
		. += span_warning("\The [src] is brewing.")
		return

	if(panel_open)
		. += span_notice("[src]'s maintenance hatch is open!")
		return

	if(coffeepot || cartridge)
		. += span_notice("\The [src] contains:")
		if(coffeepot)
			. += span_notice("- \A [coffeepot].")
		if(cartridge)
			. += span_notice("- \A [cartridge].")
		return

	if(!(machine_stat & (NOPOWER|BROKEN)))
		. += "[span_notice("The status display reads:")]\n"+\
		span_notice("- Brewing coffee at <b>[speed*100]%</b>.")
		if(coffeepot)
			for(var/datum/reagent/consumable/cawfee as anything in coffeepot.reagents.reagent_list)
				. += span_notice("- [cawfee.volume] units of coffee in pot.")
		if(cartridge)
			if(cartridge.charges < 1)
				. += span_notice("- grounds cartridge is empty.")
			else
				. += span_notice("- grounds cartridge has [cartridge.charges] charges remaining.")

	if (coffee_cups >= 1)
		. += span_notice("There [coffee_cups == 1 ? "is" : "are"] [coffee_cups] coffee cup[coffee_cups != 1 && "s"] left.")
	else
		. += span_notice("There are no cups left.")

	if (sugar_packs >= 1)
		. += span_notice("There [sugar_packs == 1 ? "is" : "are"] [sugar_packs] packet[sugar_packs != 1 && "s"] of sugar left.")
	else
		. += span_notice("There is no sugar left.")

	if (sweetener_packs >= 1)
		. += span_notice("There [sweetener_packs == 1 ? "is" : "are"] [sweetener_packs] packet[sweetener_packs != 1 && "s"] of sweetener left.")
	else
		. += span_notice("There is no sweetener left.")

	if (creamer_packs > 1)
		. += span_notice("There [creamer_packs == 1 ? "is" : "are"] [creamer_packs] packet[creamer_packs != 1 && "s"] of creamer left.")
	else
		. += span_notice("There is no creamer left.")

/obj/machinery/coffeemaker/attack_hand_secondary(mob/user, list/modifiers)
	. = ..()
	if(. == SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN)
		return
	if(!can_interact(user) || !user.can_perform_action(src, ALLOW_SILICON_REACH|FORBID_TELEKINESIS_REACH))
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	if(brewing)
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	replace_pot(user)
	return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN

/obj/machinery/coffeemaker/attack_robot_secondary(mob/user, list/modifiers)
	return attack_hand_secondary(user, modifiers)

/obj/machinery/coffeemaker/attack_ai_secondary(mob/user, list/modifiers)
	return attack_hand_secondary(user, modifiers)

/obj/machinery/coffeemaker/handle_atom_del(atom/A)
	. = ..()
	if(A == coffeepot)
		coffeepot = null
	if(A == cartridge)
		cartridge = null
	update_appearance(UPDATE_OVERLAYS)

/obj/machinery/coffeemaker/update_overlays()
	. = ..()
	. += overlay_checks()

/obj/machinery/coffeemaker/proc/overlay_checks()
	. = list()
	if(coffeepot)
		. += "coffeemaker_pot"
	if(cartridge)
		. += "coffeemaker_cartidge"
	return .

/obj/machinery/coffeemaker/proc/replace_pot(mob/living/user, obj/item/reagent_containers/cup/coffeepot/new_coffeepot)
	if(!user)
		return FALSE
	if(coffeepot)
		try_put_in_hand(coffeepot, user)
	if(new_coffeepot)
		coffeepot = new_coffeepot
	balloon_alert(user, "replaced pot")
	update_appearance(UPDATE_OVERLAYS)
	return TRUE

/obj/machinery/coffeemaker/proc/replace_cartridge(mob/living/user, obj/item/coffee_cartridge/new_cartridge)
	if(!user)
		return FALSE
	if(cartridge)
		try_put_in_hand(cartridge, user)
	if(new_cartridge)
		cartridge = new_cartridge
	update_appearance(UPDATE_OVERLAYS)
	return TRUE

/obj/machinery/coffeemaker/wrench_act(mob/living/user, obj/item/tool)
	. = ..()
	default_unfasten_wrench(user, tool)
	return TOOL_ACT_TOOLTYPE_SUCCESS

/obj/machinery/coffeemaker/attackby(obj/item/attack_item, mob/living/user, params)
	//You can only screw open empty grinder
	if(!coffeepot && default_deconstruction_screwdriver(user, icon_state, icon_state, attack_item))
		return FALSE

	if(default_deconstruction_crowbar(attack_item))
		return

	if(panel_open) //Can't insert objects when its screwed open
		return TRUE

	if (istype(attack_item, /obj/item/reagent_containers/cup/coffeepot) && !(attack_item.item_flags & ABSTRACT) && attack_item.is_open_container())
		var/obj/item/reagent_containers/cup/coffeepot/new_pot = attack_item
		. = TRUE //no afterattack
		if(!user.transferItemToLoc(new_pot, src))
			return TRUE
		replace_pot(user, new_pot)
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/cup/glass/coffee_cup) && !(attack_item.item_flags & ABSTRACT) && attack_item.is_open_container())
		var/obj/item/reagent_containers/cup/glass/coffee_cup/new_cup = attack_item
		if(new_cup.reagents.total_volume > 0)
			balloon_alert(user, "the cup must be empty!")
			return
		if(coffee_cups >= max_coffee_cups)
			balloon_alert(user, "the cup holder is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		coffee_cups++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/condiment/pack/sugar))
		var/obj/item/reagent_containers/condiment/pack/sugar/new_pack = attack_item
		if(new_pack.reagents.total_volume < new_pack.reagents.maximum_volume)
			balloon_alert(user, "the pack must be full!")
			return
		if(sugar_packs >= max_sugar_packs)
			balloon_alert(user, "the sugar compartment is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		sugar_packs++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/condiment/creamer))
		var/obj/item/reagent_containers/condiment/creamer/new_pack = attack_item
		if(new_pack.reagents.total_volume < new_pack.reagents.maximum_volume)
			balloon_alert(user, "the pack must be full!")
			return
		if(creamer_packs >= max_creamer_packs)
			balloon_alert(user, "the creamer compartment is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		creamer_packs++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/condiment/pack/astrotame))
		var/obj/item/reagent_containers/condiment/pack/astrotame/new_pack = attack_item
		if(new_pack.reagents.total_volume < new_pack.reagents.maximum_volume)
			balloon_alert(user, "the pack must be full!")
			return
		else if(sweetener_packs >= max_sweetener_packs)
			balloon_alert(user, "the sweetener compartment is full!")
			return
		else if(!user.transferItemToLoc(attack_item, src))
			return
		sweetener_packs++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/coffee_cartridge) && !(attack_item.item_flags & ABSTRACT))
		var/obj/item/coffee_cartridge/new_cartridge = attack_item
		if(!user.transferItemToLoc(new_cartridge, src))
			return
		replace_cartridge(user, new_cartridge)
		balloon_alert(user, "added cartridge")
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

/obj/machinery/coffeemaker/proc/try_brew()
	if(!cartridge)
		balloon_alert(usr, "no coffee cartidge inserted!")
		return FALSE
	if(cartridge.charges < 1)
		balloon_alert(usr, "coffee cartidge empty!")
		return FALSE
	if(!coffeepot)
		balloon_alert(usr, "no coffeepot inside!")
		return FALSE
	if(machine_stat & (NOPOWER|BROKEN))
		balloon_alert(usr, "machine unpowered!")
		return FALSE
	if(coffeepot.reagents.total_volume >= coffeepot.reagents.maximum_volume)
		balloon_alert(usr, "the coffeepot is already full!")
		return FALSE
	return TRUE

/obj/machinery/coffeemaker/ui_interact(mob/user) // The microwave Menu //I am reasonably certain that this is not a microwave //I am positively certain that this is not a microwave
	. = ..()

	if(brewing || !user.can_perform_action(src, ALLOW_SILICON_REACH))
		return

	var/list/options = list()

	if(coffeepot)
		options["Eject Pot"] = radial_eject_pot

	if(cartridge)
		options["Eject Cartridge"] = radial_eject_cartridge

	options["Brew"] = radial_brew //brew is always available as an option, when the machine is unable to brew the player is told by balloon alerts whats exactly wrong

	if(coffee_cups > 0)
		options["Take Cup"] = radial_take_cup

	if(sugar_packs > 0)
		options["Take Sugar"] = radial_take_sugar

	if(sweetener_packs > 0)
		options["Take Sweetener"] = radial_take_sweetener

	if(creamer_packs > 0)
		options["Take Creamer"] = radial_take_creamer

	if(isAI(user))
		if(machine_stat & NOPOWER)
			return
		options["Examine"] = radial_examine

	var/choice

	if(length(options) < 1)
		return
	if(length(options) == 1)
		choice = options[1]
	else
		choice = show_radial_menu(user, src, options, require_near = !issilicon(user))

	// post choice verification
	if(brewing || (isAI(user) && machine_stat & NOPOWER) || !user.can_perform_action(src, ALLOW_SILICON_REACH))
		return

	switch(choice)
		if("Brew")
			brew(user)
		if("Eject Pot")
			eject_pot(user)
		if("Eject Cartridge")
			eject_cartridge(user)
		if("Examine")
			examine(user)
		if("Take Cup")
			take_cup(user)
		if("Take Sugar")
			take_sugar(user)
		if("Take Sweetener")
			take_sweetener(user)
		if("Take Creamer")
			take_creamer(user)

/obj/machinery/coffeemaker/proc/eject_pot(mob/user)
	if(coffeepot)
		replace_pot(user)

/obj/machinery/coffeemaker/proc/eject_cartridge(mob/user)
	if(cartridge)
		replace_cartridge(user)

/obj/machinery/coffeemaker/proc/take_cup(mob/user)
	if(!coffee_cups) //shouldn't happen, but we all know how stuff manages to break
		balloon_alert(user, "no cups left!")
		return
	var/obj/item/reagent_containers/cup/glass/coffee_cup/new_cup = new(get_turf(src))
	user.put_in_hands(new_cup)
	coffee_cups--
	update_appearance(UPDATE_OVERLAYS)

/obj/machinery/coffeemaker/proc/take_sugar(mob/user)
	if(!sugar_packs)
		balloon_alert(user, "no sugar left!")
		return
	var/obj/item/reagent_containers/condiment/pack/sugar/new_pack = new(get_turf(src))
	user.put_in_hands(new_pack)
	sugar_packs--
	update_appearance(UPDATE_OVERLAYS)

/obj/machinery/coffeemaker/proc/take_sweetener(mob/user)
	if(!sweetener_packs)
		balloon_alert(user, "no sweetener left!")
		return
	var/obj/item/reagent_containers/condiment/pack/astrotame/new_pack = new(get_turf(src))
	user.put_in_hands(new_pack)
	sweetener_packs--
	update_appearance(UPDATE_OVERLAYS)

/obj/machinery/coffeemaker/proc/take_creamer(mob/user)
	if(!creamer_packs)
		balloon_alert(user, "no creamer left!")
		return
	var/obj/item/reagent_containers/condiment/creamer/new_pack = new(drop_location())
	user.put_in_hands(new_pack)
	creamer_packs--
	update_appearance(UPDATE_OVERLAYS)

///Updates the smoke state to something else, setting particles if relevant
/obj/machinery/coffeemaker/proc/toggle_steam()
	QDEL_NULL(particles)
	if(brewing)
		particles = new /particles/smoke/steam/mild()
		particles.position = list(-6, 0, 0)

/obj/machinery/coffeemaker/proc/operate_for(time, silent = FALSE)
	brewing = TRUE
	if(!silent)
		playsound(src, 'sound/machines/coffeemaker_brew.ogg', 20, vary = TRUE)
	toggle_steam()
	use_power(active_power_usage * time * 0.1) // .1 needed here to convert time (in deciseconds) to seconds such that watts * seconds = joules
	addtimer(CALLBACK(src, PROC_REF(stop_operating)), time / speed)

/obj/machinery/coffeemaker/proc/stop_operating()
	brewing = FALSE
	toggle_steam()

/obj/machinery/coffeemaker/proc/brew()
	power_change()
	if(!try_brew())
		return
	operate_for(brew_time)
	coffeepot.reagents.add_reagent_list(cartridge.drink_type)
	cartridge.charges--

/obj/machinery/coffeemaker/piccolo
	name = "microcoffeemaker"
	desc = "A Piccolo 5 Coffeemaker that brews single cups of coffee. Takes smaller \"D-S\" model cartridges. Made by Piccionaia Home Appliances."
	accepted_cartridge_type = "DS"
	initial_cartridge = /obj/item/coffee_cartridge/micro

//Coffee Cartridges: like toner, but for your coffee!
/obj/item/coffee_cartridge
	name = "coffeemaker cartridge- Caffè Generico"
	desc = "A \"G-B-A\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Modello 3 system."
	icon = 'icons/obj/food/cartridges.dmi'
	icon_state = "cartridge_basic"
	var/cartridge_type = "GBA"
	var/charges = 4
	var/list/drink_type = list(/datum/reagent/consumable/coffee = 120)

/obj/item/coffee_cartridge/examine(mob/user)
	. = ..()
	if(charges)
		. += span_warning("The cartridge has [charges] portions of grounds remaining.")
	else
		. += span_warning("The cartridge has no unspent grounds remaining.")

/obj/item/coffee_cartridge/fancy
	name = "coffeemaker cartridge - Caffè Fantasioso"
	desc = "A fancy \"G-B-A\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Modello 3 system."
	icon_state = "cartridge_blend"

//Here's the joke before I get 50 issue reports: they're all the same, and that's intentional
/obj/item/coffee_cartridge/fancy/Initialize(mapload)
	. = ..()
	var/coffee_type = pick("blend", "blue_mountain", "kilimanjaro", "mocha")
	switch(coffee_type)
		if("blend")
			name = "coffeemaker cartridge - Miscela di Piccione"
			icon_state = "cartridge_blend"
		if("blue_mountain")
			name = "coffeemaker cartridge - Montagna Blu"
			icon_state = "cartridge_blue_mtn"
		if("kilimanjaro")
			name = "coffeemaker cartridge - Kilimangiaro"
			icon_state = "cartridge_kilimanjaro"
		if("mocha")
			name = "coffeemaker cartridge - Moka Arabica"
			icon_state = "cartridge_mocha"
		if("shb_blend")
			name = "coffeemaker cartridge - Miscela di SHB"
			icon_state = "cartridge_shb"
		if("narino")
			name = "coffeemaker cartridge - Narino Columbiano"
			icon_state = "cartridge_narino"
		if("crystal_mountain")
			name = "coffeemaker cartridge - Montagna di Cristallo Cubana"
			icon_state = "cartridge_crystal_mountain"
		if("kona")
			name = "coffeemaker cartridge - 10% Kona Hawaiana"
			icon_state = "cartridge_kona"
		if("yirgacheffe")
			name = "coffeemaker cartridge - Yirgacheffe Etiope"
			icon_state = "cartridge_yirgacheffe"
		if("altura")
			name = "coffeemaker cartridge - Altura Premium Messicana"
			icon_state = "cartridge_altura"
		if("santos")
			name = "coffeemaker cartridge - Brasiliano n.2/18"
			icon_state = "cartridge_santos"
		if("bucaramanga")
			name = "coffeemaker cartridge - Bucaramanga Supremo"
			icon_state = "cartridge_bucaramanga"
		if("kenyan_aa")
			name = "coffeemaker cartridge - Keniota AA"
			icon_state = "cartridge_kenyan_aa"
		if("bourbon")
			name = "coffeemaker cartridge - Bourbon Brasiliano"
			icon_state = "cartridge_bourbon"
		if("typica")
			name = "coffeemaker cartridge - 100% Tipica Columbiana"
			icon_state = "cartridge_typica"
		if("antigua")
			name = "coffeemaker cartridge - Antigua Guatemalteca"
			icon_state = "cartridge_antigua"
		if("pacamara")
			name = "coffeemaker cartridge - Pacamara Salvadoregna"
			icon_state = "cartridge_pacamara"
		if("esmerelda")
			name = "coffeemaker cartridge - Panama Esmerelda Geisha"
			icon_state = "cartridge_esmerelda"
		if("kopi_luwak")
			name = "coffeemaker cartridge - Kopi Luwak Indonesiano"
			icon_state = "cartridge_kopi_luwak"

/obj/item/coffee_cartridge/decaf
	name = "coffeemaker cartridge - Caffè Decaffeinato"
	desc = "A decaf \"G-B-A\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Modello 3 system."
	icon_state = "cartridge_decaf"

/obj/item/coffee_cartridge/tea
	name = "coffeemaker cartridge - Tè Nero"
	desc = "A \"G-B-A\" model tea cartridge manufactured by Piccionaia Coffee, for use with the Modello 3 system."
	drink_type = list(/datum/reagent/consumable/tea = 120)
	icon_state = "cartridge_tea"

/obj/item/coffee_cartridge/chicory
	name = "coffeemaker cartridge - Caffè alla Cicoria"
	desc = "A \"G-B-A\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Modello 3 system. With added chicory, for an authentic Cajun experience."
	drink_type = list(/datum/reagent/consumable/coffee/chicory = 120)
	icon_state = "cartridge_chicory"

// no you can't just squeeze the juice bag into a glass!
/obj/item/coffee_cartridge/bootleg
	name = "coffeemaker cartridge - Botany Blend"
	desc = "A jury-rigged \"G-B-A\" model coffee cartridge. Should work with a Modello 3 system, though it might void the warranty."
	icon_state = "cartridge_bootleg"

// cute little cartridges for the cute little system
/obj/item/coffee_cartridge/micro
	name = "microcoffeemaker cartridge- Caffè Generico"
	desc = "A cute little \"D-S\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system."
	icon_state = "cartridge_micro_basic"
	cartridge_type = "DS"
	charges = 1 //single use, just like coffee pods
	drink_type = list(/datum/reagent/consumable/coffee = 30)

/obj/item/coffee_cartridge/micro/fancy
	name = "microcoffeemaker cartridge - Caffè Fantasioso"
	desc = "A fancy \"D-S\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system."
	icon_state = "cartridge_micro_blend"

/obj/item/coffee_cartridge/fancy/Initialize(mapload)
	. = ..()
	var/coffee_type = pick("blend", "blue_mountain", "kilimanjaro", "mocha")
	switch(coffee_type)
		if("blend")
			name = "microcoffeemaker cartridge - Miscela di Piccione"
			icon_state = "cartridge_micro_blend"
		if("blue_mountain")
			name = "microcoffeemaker cartridge - Montagna Blu"
			icon_state = "cartridge_micro_blue_mtn"
		if("kilimanjaro")
			name = "microcoffeemaker cartridge - Kilimangiaro"
			icon_state = "cartridge_micro_kilimanjaro"
		if("mocha")
			name = "microcoffeemaker cartridge - Moka Arabica"
			icon_state = "cartridge_micro_mocha"
		if("shb_blend")
			name = "microcoffeemaker cartridge - Miscela di SHB"
			icon_state = "cartridge_micro_shb"
		if("narino")
			name = "microcoffeemaker cartridge - Narino Columbiano"
			icon_state = "cartridge_micro_narino"
		if("crystal_mountain")
			name = "microcoffeemaker cartridge - Montagna di Cristallo Cubana"
			icon_state = "cartridge_micro_crystal_mountain"
		if("kona")
			name = "microcoffeemaker cartridge - 10% Kona Hawaiana"
			icon_state = "cartridge_micro_kona"
		if("yirgacheffe")
			name = "microcoffeemaker cartridge - Yirgacheffe Etiope"
			icon_state = "cartridge_micro_yirgacheffe"
		if("altura")
			name = "microcoffeemaker cartridge - Altura Premium Messicana"
			icon_state = "cartridge_micro_altura"
		if("santos")
			name = "microcoffeemaker cartridge - Brasiliano n.2/18"
			icon_state = "cartridge_micro_santos"
		if("bucaramanga")
			name = "microcoffeemaker cartridge - Bucaramanga Supremo"
			icon_state = "cartridge_micro_bucaramanga"
		if("kenyan_aa")
			name = "microcoffeemaker cartridge - Keniota AA"
			icon_state = "cartridge_micro_kenyan_aa"
		if("bourbon")
			name = "microcoffeemaker cartridge - Bourbon Brasiliano"
			icon_state = "cartridge_micro_bourbon"
		if("typica")
			name = "microcoffeemaker cartridge - 100% Tipica Columbiana"
			icon_state = "cartridge_micro_typica"
		if("antigua")
			name = "microcoffeemaker cartridge - Antigua Guatemalteca"
			icon_state = "cartridge_micro_antigua"
		if("pacamara")
			name = "microcoffeemaker cartridge - Pacamara Salvadoregna"
			icon_state = "cartridge_micro_pacamara"
		if("esmerelda")
			name = "microcoffeemaker cartridge - Panama Esmerelda Geisha"
			icon_state = "cartridge_micro_esmerelda"
		if("kopi_luwak")
			name = "microcoffeemaker cartridge - Kopi Luwak Indonesiano"
			icon_state = "cartridge_micro_kopi_luwak"

/obj/item/coffee_cartridge/micro/decaf
	name = "microcoffeemaker cartridge - Caffè Decaffeinato"
	desc = "A decaf \"D-S\" model coffee cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system."
	icon_state = "cartridge_micro_decaf"
	drink_type = list(/datum/reagent/consumable/coffee/decaf = 30)

/obj/item/coffee_cartridge/micro/tea //featuring innovative tea paste technology for a consistent brew, every time
	name = "microcoffeemaker cartridge - Tè Nero"
	desc = "A \"D-S\" model tea cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system."
	drink_type = list(/datum/reagent/consumable/tea = 30)
	icon_state = "cartridge_micro_tea"

/obj/item/coffee_cartridge/micro/latte
	name = "microcoffeemaker cartridge - Caffè Latte"
	drink_type = list(/datum/reagent/consumable/coffee/caffe_latte = 30)

/obj/item/coffee_cartridge/micro/mocha
	name = "microcoffeemaker cartridge - Caffè della Moka"
	drink_type = list(/datum/reagent/consumable/coffee/mocha = 30)

/obj/item/coffee_cartridge/micro/americano
	name = "microcoffeemaker cartridge - Caffè Americano"
	drink_type = list(/datum/reagent/consumable/coffee/americano = 30)

/obj/item/coffee_cartridge/micro/cappuccino
	name = "microcoffeemaker cartridge - Cappuccino Triestino"
	drink_type = list(/datum/reagent/consumable/coffee/cappuccino = 30)

/obj/item/coffee_cartridge/micro/donkaccino
	name = "microcoffeemaker cartridge - Big Donk Donuts' Donkaccino"
	desc = "A \"D-S\" model drink cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system. Part of Piccionaia's Signature range, this cartridge makes a home facsimile of Big Donk Donuts' signature Donkaccino."
	drink_type = list(/datum/reagent/consumable/coffee/donkaccino = 30)

/obj/item/coffee_cartridge/micro/maple_white
	name = "microcoffeemaker cartridge - Jim Nortons' Maple White"
	desc = "A \"D-S\" model drink cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system. Part of Piccionaia's Signature range, this cartridge makes a home facsimile of Jim Nortons' signature Maple White."
	drink_type = list(/datum/reagent/consumable/coffee/maple_white = 30)

/obj/item/coffee_cartridge/micro/twin_shot_caramel
	name = "microcoffeemaker cartridge - Siren Java Company's Caramel Twin Shot"
	desc = "A \"D-S\" model drink cartridge manufactured by Piccionaia Coffee, for use with the Piccolo 5 system. Part of Piccionaia's Signature range, this cartridge makes a home facsimile of the Siren Java Company's signature Caramel Twin-Shot."
	drink_type = list(/datum/reagent/consumable/coffee/twin_shot_caramel = 30)

/obj/item/coffee_cartridge/micro/bootleg
	name = "microcoffeemaker cartridge - Botany Blend"
	desc = "A jury-rigged \"D-S\" model coffee cartridge. Should work with a Piccolo 5 system, though it might void the warranty."
	icon_state = "cartridge_micro_bootleg"

/obj/item/coffee_cartridge/micro/bootleg/mothic
	name = "microcoffeemaker cartridge - Fleet Blend"
	desc = "A jury-rigged \"D-S\" model coffee cartridge, imported from the Mothic Fleet. Should work with a Piccolo 5 system, though it will definitely void the warranty."

// blank cartridge for crafting's sake, can be made at the service lathe
/obj/item/blank_coffee_cartridge
	name = "blank coffee cartridge"
	desc = "A blank \"G-B-A\" model coffee cartridge, ready to be filled with coffee paste."
	icon = 'icons/obj/food/cartridges.dmi'
	icon_state = "cartridge_blank"

/obj/item/blank_coffee_cartridge/micro
	name = "blank microcoffee cartridge"
	desc = "A blank \"D-S\" model coffee cartridge, ready to be filled with coffee paste."
	icon_state = "cartridge_micro_blank"

//now, how do you store coffee carts? well, in a rack, of course!
/obj/item/storage/fancy/coffee_cart_rack
	name = "coffeemaker cartridge rack"
	desc = "A small rack for storing coffeemaker cartridges."
	icon = 'icons/obj/food/containers.dmi'
	icon_state = "coffee_cartrack4"
	base_icon_state = "coffee_cartrack"
	contents_tag = "coffee cartridge"
	open_status = FANCY_CONTAINER_ALWAYS_OPEN
	spawn_type = /obj/item/coffee_cartridge

/obj/item/storage/fancy/coffee_cart_rack/Initialize(mapload)
	. = ..()
	atom_storage.max_slots = 4
	atom_storage.set_holdable(list(/obj/item/coffee_cartridge))

/*
 * impressa coffee maker
 * its supposed to be a premium line product, so its cargo-only, the board cant be therefore researched
 */

/obj/machinery/coffeemaker/impressa
	name = "impressa coffeemaker"
	desc = "An industry-grade Impressa Modello 5 Coffeemaker of the Piccionaia Home Appliances premium coffeemakers product line. Makes coffee from fresh dried whole beans."
	icon = 'icons/obj/machines/coffeemaker.dmi'
	icon_state = "coffeemaker_impressa"
	circuit = /obj/item/circuitboard/machine/coffeemaker/impressa
	initial_cartridge = null //no cartridge, just coffee beans
	brew_time = 15 SECONDS //industrial grade, its faster than the regular one
	density = TRUE
	pass_flags = PASSTABLE
	/// Current amount of coffee beans stored
	var/coffee_amount = 0
	/// List of coffee bean objects are stored
	var/list/coffee = list()

/obj/machinery/coffeemaker/impressa/Initialize(mapload)
	. = ..()
	if(mapload)
		coffeepot = new /obj/item/reagent_containers/cup/coffeepot(src)
		cartridge = null

/obj/machinery/coffeemaker/impressa/Destroy()
	QDEL_NULL(coffeepot)
	QDEL_NULL(coffee)
	return ..()

/obj/machinery/coffeemaker/impressa/Exited(atom/movable/gone, direction)
	if(gone == coffeepot)
		coffeepot = null
	if(gone == coffee)
		coffee = null
	return ..()

/obj/machinery/coffeemaker/impressa/examine(mob/user)
	. = ..()
	if(coffee)
		. += span_notice("The internal grinder contains [coffee.len] scoop\s of coffee beans")

/obj/machinery/coffeemaker/impressa/update_overlays()
	. = ..()
	. += overlay_checks()

/obj/machinery/coffeemaker/impressa/overlay_checks()
	. = list()
	if(coffeepot)
		if(coffeepot.reagents.total_volume > 0)
			. += "pot_full"
		else
			. += "pot_empty"
	if(coffee_cups > 0)
		if(coffee_cups >= max_coffee_cups/3)
			if(coffee_cups > max_coffee_cups/1.5)
				. += "cups_3"
			else
				. += "cups_2"
		else
			. += "cups_1"
	if(sugar_packs)
		. += "extras_1"
	if(creamer_packs)
		. += "extras_2"
	if(sweetener_packs)
		. += "extras_3"
	if(coffee_amount)
		if(coffee_amount < 0.7*BEAN_CAPACITY)
			. += "grinder_half"
		else
			. += "grinder_full"
	return .

/obj/machinery/coffeemaker/impressa/handle_atom_del(atom/A)
	. = ..()
	if(A == coffeepot)
		coffeepot = null
	if(A == coffee)
		coffee.Cut()
	update_appearance(UPDATE_OVERLAYS)

/obj/machinery/coffeemaker/impressa/try_brew()
	if(coffee_amount <= 0)
		balloon_alert_to_viewers("no coffee beans added!")
		return FALSE
	if(!coffeepot)
		balloon_alert_to_viewers("no coffeepot inside!")
		return FALSE
	if(machine_stat & (NOPOWER|BROKEN) )
		balloon_alert_to_viewers("machine unpowered!")
		return FALSE
	if(coffeepot.reagents.total_volume >= coffeepot.reagents.maximum_volume)
		balloon_alert_to_viewers("the coffeepot is already full!")
		return FALSE
	return TRUE

/obj/machinery/coffeemaker/impressa/attackby(obj/item/attack_item, mob/living/user, params)
	//You can only screw open empty grinder
	if(!coffeepot && default_deconstruction_screwdriver(user, icon_state, icon_state, attack_item))
		return

	if(default_deconstruction_crowbar(attack_item))
		return

	if(panel_open) //Can't insert objects when its screwed open
		return TRUE

	if (istype(attack_item, /obj/item/reagent_containers/cup/coffeepot) && !(attack_item.item_flags & ABSTRACT) && attack_item.is_open_container())
		var/obj/item/reagent_containers/cup/coffeepot/new_pot = attack_item
		if(!user.transferItemToLoc(new_pot, src))
			return TRUE
		replace_pot(user, new_pot)
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/cup/glass/coffee) && !(attack_item.item_flags & ABSTRACT) && attack_item.is_open_container())
		var/obj/item/reagent_containers/cup/glass/coffee/new_cup = attack_item //different type of cup
		if(new_cup.reagents.total_volume > 0 )
			balloon_alert(user, "the cup must be empty!")
			return
		if(coffee_cups >= max_coffee_cups)
			balloon_alert(user, "the cup holder is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		coffee_cups++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/condiment/pack/sugar))
		var/obj/item/reagent_containers/condiment/pack/sugar/new_pack = attack_item
		if(new_pack.reagents.total_volume < new_pack.reagents.maximum_volume)
			balloon_alert(user, "the pack must be full!")
			return
		if(sugar_packs >= max_sugar_packs)
			balloon_alert(user, "the sugar compartment is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		sugar_packs++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/condiment/creamer))
		var/obj/item/reagent_containers/condiment/creamer/new_pack = attack_item
		if(new_pack.reagents.total_volume < new_pack.reagents.maximum_volume)
			balloon_alert(user, "the pack must be full!")
			return
		if(creamer_packs >= max_creamer_packs)
			balloon_alert(user, "the creamer compartment is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		creamer_packs++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/reagent_containers/condiment/pack/astrotame))
		var/obj/item/reagent_containers/condiment/pack/astrotame/new_pack = attack_item
		if(new_pack.reagents.total_volume < new_pack.reagents.maximum_volume)
			balloon_alert(user, "the pack must be full!")
			return
		if(sweetener_packs >= max_sweetener_packs)
			balloon_alert(user, "the sweetener compartment is full!")
			return
		if(!user.transferItemToLoc(attack_item, src))
			return
		sweetener_packs++
		update_appearance(UPDATE_OVERLAYS)
		return TRUE //no afterattack

	if (istype(attack_item, /obj/item/food/grown/coffee) && !(attack_item.item_flags & ABSTRACT))
		if(coffee_amount >= BEAN_CAPACITY)
			balloon_alert(user, "the coffee container is full!")
			return
		if(!HAS_TRAIT(attack_item, TRAIT_DRIED))
			balloon_alert(user, "coffee beans must be dry!")
			return
		var/obj/item/food/grown/coffee/new_coffee = attack_item
		if(!user.transferItemToLoc(new_coffee, src))
			return
		coffee += new_coffee
		coffee_amount++
		balloon_alert(user, "added coffee")


	if (istype(attack_item, /obj/item/storage/box/coffeepack))
		if(coffee_amount >= BEAN_CAPACITY)
			balloon_alert(user, "the coffee container is full!")
			return
		var/obj/item/storage/box/coffeepack/new_coffee_pack = attack_item
		for(var/obj/item/food/grown/coffee/new_coffee in new_coffee_pack.contents)
			if(HAS_TRAIT(new_coffee, TRAIT_DRIED)) //the coffee beans inside must be dry
				if(coffee_amount < BEAN_CAPACITY)
					if(user.transferItemToLoc(new_coffee, src))
						coffee += new_coffee
						coffee_amount++
						new_coffee.forceMove(src)
						balloon_alert(user, "added coffee")
						update_appearance(UPDATE_OVERLAYS)
					else
						return
				else
					return
			else
				balloon_alert(user, "non-dried beans inside of coffee pack!")
				return

	update_appearance(UPDATE_OVERLAYS)
	return TRUE //no afterattack

/obj/machinery/coffeemaker/impressa/take_cup(mob/user)
	if(!coffee_cups) //shouldn't happen, but we all know how stuff manages to break
		balloon_alert(user, "no cups left!")
		return
	balloon_alert_to_viewers("took cup")
	var/obj/item/reagent_containers/cup/glass/coffee/no_lid/new_cup = new(get_turf(src))
	user.put_in_hands(new_cup)
	coffee_cups--
	update_appearance(UPDATE_OVERLAYS)

/obj/machinery/coffeemaker/impressa/toggle_steam()
	QDEL_NULL(particles)
	if(brewing)
		particles = new /particles/smoke/steam/mild()
		particles.position = list(-2, 1, 0)

/obj/machinery/coffeemaker/impressa/brew()
	power_change()
	if(!try_brew())
		return
	operate_for(brew_time)
	coffeepot.reagents.add_reagent_list(list(/datum/reagent/consumable/coffee = 120))
	coffee.Cut(1,2) //remove the first item from the list
	coffee_amount--
	update_appearance(UPDATE_OVERLAYS)

#undef BEAN_CAPACITY
