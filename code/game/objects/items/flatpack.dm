/obj/item/flatpack
	name = "furniture debris"
	desc = "A pile of wood, screws, and Space Swedish ingeniuity."
	icon = 'icons/obj/items_and_weapons.dmi'
	icon_state = "wood_tableparts"
	var/furniture_name = "Billig table"
	var/finished_furniture = /obj/structure/table/wood
	var/building = FALSE

/obj/item/flatpack/attackby(obj/item/W, mob/user, params)
	if(building)
		return
	if(!(isfloorturf(loc) || istype(loc, /turf/open/indestructible))
		to_chat(user, "<span class='warning'>[src] can only be constructed on the floor.</span>")
		return
	if (W.tool_behaviour == TOOL_WRENCH)
		building = TRUE
		to_chat(user, "<span class='notice'>You start constructing a [furniture_name]...</span>")
		if(do_after(user, 50, target = user, progress=TRUE))
			if(!user.temporarilyRemoveItemFromInventory(src))
				return
			var/obj/structure/F = new finished_furniture(loc)
			user.visible_message("<span class='notice'>[user] assembles \a [furniture_name].\
				</span>", "<span class='notice'>You assemble \a [furniture_name].</span>")
			F.add_fingerprint(user)
			qdel(src)
		building = FALSE
