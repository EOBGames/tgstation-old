/obj/machinery/wood_fired_oven
	name = "wood fired oven"
	desc = "A big modern wood fired oven, useful for baking pizzas, breads, and a whole host of other foods."
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "wood_oven"
	layer = BELOW_OBJ_LAYER
	density = TRUE
	use_power = NO_POWER_USE
	circuit = /obj/item/circuitboard/machine/wood_fired_oven
	light_color = LIGHT_COLOR_FIRE
	light_power = 3
	var/max_items = 5
	var/list/cooking_objects = list() //things that are currently inside the oven
	var/fuel = 0 //wood fired ovens need wood, obviously: 5 is required to light it, and from there it uses 1 every 30 seconds
	var/max_fuel = 20 //20 logs, equates to 10 minutes of being lit
	var/lit = FALSE //whether it's lit
	COOLDOWN_DECLARE(fuel_use_duration)

	var/static/radial_examine = image(icon = 'icons/hud/radial.dmi', icon_state = "radial_examine")
	var/static/radial_eject = image(icon = 'icons/hud/radial.dmi', icon_state = "radial_eject")
	var/static/radial_light = image(icon = 'icons/obj/cigarettes.dmi', icon_state = "match_lit")

	// we show the button even if the proc will not work
	var/static/list/radial_options = list("eject" = radial_eject, "use" = radial_use)
	var/static/list/ai_radial_options = list("eject" = radial_eject, "use" = radial_use, "examine" = radial_examine)

/obj/machinery/wood_fired_oven/proc/light()
	if(fuel > 5)
		fuel -= 5
		begin_processing()
		visible_message("<span class='notice'>\The fuel inside [src] ignites.</span>", null, "<span class='hear'>You hear a fire igniting.</span>")
		lit = TRUE
		set_light(1.5)
		update_appearance()

/obj/machinery/wood_fired_oven/proc/out_of_fuel()
	end_processing()
	visible_message("<span class='notice'>\The [src]'s flame dies out as it runs out of fuel.</span>", null, "<span class='hear'>You no longer hear flames.</span>")
	lit = FALSE
	set_light(0)
	update_appearance()

/obj/machinery/wood_fired_oven/attackby(obj/item/I, mob/user, params)
	if((istype(I, /obj/item/grown/log)))
		if((istype(I, /obj/item/grown/log/steel)))
			to_chat(user, "<span class='notice'>That won't burn!</span>")
		else
			to_chat(user, "<span class='notice'>You put [I] in [src], adding fuel to the fire.</span>")
			fuel += 2 //each log accounts for 2 fuel
	else if((istype(I, /obj/item/stack/sheet/mineral/wood)))
		var/obj/item/stack/S = I
		var/stackamount = S.get_amount()
		var/addable_fuel = max_fuel - fuel
		if(stackamount > addable_fuel)
			S.use(addable_fuel)
			fuel += addable_fuel
			to_chat(user, "<span class='notice'>You put [addable_fuel] [I]s in [src], adding fuel to the fire.</span>")
		else
			S.use(stackamount)
			fuel += stackamount
			to_chat(user, "<span class='notice'>You put [stackamount] [I]s in [src], adding fuel to the fire.</span>")
	if(cooking_objects.len >= max_items)
		to_chat(user, "<span class='notice'>[src] can't fit more items!</span>")
		return
	var/list/modifiers = params2list(params)
	if(user.transferItemToLoc(I, src, silent = FALSE))
		to_chat(user, "<span class='notice'>You place [I] inside [src].</span>")
		AddToOven(I, user)
	else
		return ..()

/obj/machinery/wood_fired_oven/proc/AddToOven(obj/item/item_to_cook, mob/user)
	cooking_objects += item_to_cook
	RegisterSignal(item_to_cook, COMSIG_MOVABLE_MOVED, .proc/ItemMoved)
	RegisterSignal(item_to_cook, COMSIG_WOOD_FIRED_OVEN_COMPLETED, .proc/OvenBakeCompleted)
	RegisterSignal(item_to_cook, COMSIG_PARENT_QDELETING, .proc/ItemRemovedFromOven)

/obj/machinery/wood_fired_oven/proc/ItemRemovedFromOven(obj/item/I)
	SIGNAL_HANDLER
	cooking_objects -= I
	UnregisterSignal(I, list(COMSIG_WOOD_FIRED_OVEN_COMPLETED, COMSIG_MOVABLE_MOVED, COMSIG_PARENT_QDELETING))

/obj/machinery/wood_fired_oven/proc/ItemMoved(obj/item/I, atom/OldLoc, Dir, Forced)
	SIGNAL_HANDLER
	ItemRemovedFromOven(I)

/obj/machinery/wood_fired_oven/proc/OvenBakeCompleted(obj/item/source, atom/baked_result)
	SIGNAL_HANDLER
	AddToOven(baked_result)

/obj/machinery/wood_fired_oven/wrench_act(mob/living/user, obj/item/I)
	..()
	default_unfasten_wrench(user, I, 2 SECONDS)
	return TRUE

/obj/machinery/wood_fired_oven/process(delta_time)
	..()
	for(var/i in cooking_objects)
		var/obj/item/cooked_item = i
		if(SEND_SIGNAL(cooked_item, COMSIG_ITEM_WOOD_FIRED_OVEN_ACT, src, delta_time) & COMPONENT_SUCCESSFUL_FIRE_OVEN_BAKE)
			continue
		cooked_item.fire_act(1000) //Hot hot hot!
		if(prob(10))
			visible_message("<span class='danger'>[cooked_item] is burning in [src]!</span>")
	if(!COOLDOWN_FINISHED(src, fuel_use_duration))
		return
	if(fuel > 0)
		fuel -= 1
		COOLDOWN_START(src, fuel_use_duration, 30 SECONDS)
	else
		out_of_fuel()

/obj/machinery/wood_fired_oven/update_icon_state()
	icon_state = "wood_oven_[lit ? "on" : "off"]"
	return ..()
