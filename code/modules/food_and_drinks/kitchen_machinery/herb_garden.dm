/obj/machinery/herb_garden
	name = "herb garden"
	desc = "A scenic little planter for flavourful little plants."
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "herb_garden"
	density = TRUE
	layer = BELOW_OBJ_LAYER
	use_power = IDLE_POWER_USE
	var/planted = FALSE //has it actually got any herbs planted in it? roundstart gardens are TRUE, constructed are FALSE
	var/dead = FALSE //the garden dies if there's too much plasma in the air, if there's no air, or if the area is too hot or cold
	var/picks_left = 5 //how many herbs are left to pick- they regrow at a rate of 1 per 20 seconds
	var/max_picks = 5 //5 max, meaning a total time to refill of 1 minute, 40 seconds if fully depleted
	COOLDOWN_DECLARE(regrow_duration)

/obj/machinery/herb_garden/mapload
	planted = TRUE

/obj/machinery/herb_garden/attack_hand(mob/user, list/modifiers)
	. = ..()
	if(.)
		return
	if(planted == FALSE)
		to_chat(user, "<span class='notice'>[src] has no herbs planted in it!</span>")
		return
	if(dead == TRUE)
		to_chat(user, "<span class='notice'>The herbs in [src] are withered and dead!</span>")
		return
	if(picks_left == 0)
		to_chat(user, "<span class='notice'>[src] isn't ready to harvest!</span>")
		return
	pick_herbs(user)

/obj/machinery/herb_garden/proc/pick_herbs(mob/user)
	if(!user)
		return
	var/static/list/choices = list(
		"Basil" = image(icon = 'icons/hud/radial.dmi', icon_state = "basil"),
		"Rosemary" = image(icon = 'icons/hud/radial.dmi', icon_state = "rosemary"),
		"Oregano" = image(icon = 'icons/hud/radial.dmi', icon_state = "oregano"),
		"Thyme" = image(icon = 'icons/hud/radial.dmi', icon_state = "thyme"),
		"Parsley" = image(icon = 'icons/hud/radial.dmi', icon_state = "parsley"),
		"Mint" = image(icon = 'icons/hud/radial.dmi', icon_state = "mint"),
		"Cilantro" = image(icon = 'icons/hud/radial.dmi', icon_state = "cilantro")
		)
	var/choice = show_radial_menu(user, src, choices, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE, tooltips = TRUE)
	if(!check_menu(user))
		return
	var/pick_choice = 
	switch(choice)
		if("Basil")
			pick_choice = /obj/item/food/herb/basil
		if("Rosemary")
			pick_choice = /obj/item/food/herb/rosemary
		if("Oregano")
			pick_choice = /obj/item/food/herb/oregano
		if("Thyme")
			pick_choice = /obj/item/food/herb/thyme
		if("Parsley")
			pick_choice = /obj/item/food/herb/parsley
		if("Mint")
			pick_choice = /obj/item/food/herb/mint
		if("Cilantro")
			pick_choice = /obj/item/food/herb/cilantro
	picks_left -= 1
	new pick_choice(get_turf(M))
	to_chat(user, "<span class='notice'>You pluck [pick_choice.name] from [src].</span>")
	start_processing()

/obj/machinery/herb_garden/proc/regrow()
	picks_left

/obj/machinery/herb_garden/process()
	if(!COOLDOWN_FINISHED(src, regrow_duration))
		return
	if(picks_left < max_picks)
		COOLDOWN_START(src, regrow_duration, 20 SECONDS)
		picks_left += 1
		return
	else
		stop_processing()
