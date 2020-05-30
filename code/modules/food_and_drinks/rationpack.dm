/obj/item/rationpack
	name = "ration pack"
	desc = "It's a (dehydrated) meal in a bag! Simply add water."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "rationpack"
	var/list/meal_types = list(/obj/item/reagent_containers/food/snacks/spaghetti/meatballspaghetti,
								/obj/item/reagent_containers/food/snacks/spaghetti/beefnoodle,
								/obj/item/reagent_containers/food/snacks/soup/hotchili,
								/obj/item/reagent_containers/food/snacks/soup/tomato,
								/obj/item/reagent_containers/food/snacks/salad/oatmeal,
								/obj/item/reagent_containers/food/snacks/salad/ricepork,
								/obj/item/reagent_containers/food/snacks/pizzaslice/margherita,
								/obj/item/reagent_containers/food/snacks/cornedbeef,
								/obj/item/reagent_containers/food/snacks/omelette,
								/obj/item/reagent_containers/food/snacks/customizable/poutine)

/obj/item/rationpack/swedish
	name = "\improper SVEA dehydromeal"
	desc = "Classic Space Swedish cuisine, in a dehydrated form! Simply add water."
	icon_state = "swedefood"
	meal_types = list()
