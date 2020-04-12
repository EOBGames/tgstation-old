/obj/item/storage/mugrack
	name = "mug rack"
	desc = "Holds mugs. Place next to a coffee machine for maximum effect."
	icon_state = "mugrack"
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/storage/mugrack/update_icon_state()
	icon_state = "[initial(icon_state)][contents.len]"

/obj/item/storage/mugrack/Initialize()
	. = ..()
	update_icon()

/obj/item/storage/mugrack/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	STR.set_holdable(list(/obj/item/reagent_containers/food/drinks/mug,
		/obj/item/reagent_containers/food/drinks/britcup
	))
	STR.max_items = 9

/obj/item/storage/mugrack/PopulateContents()
	for(var/i in 1 to 9)
		new /obj/item/reagent_containers/food/drinks/mug(src)
