
/obj/machinery/vending/tideraid
	name = "\improper FreshSweat Drinks"
	desc = "A vendor filled with sports drinks to keep you going."
	icon_state = "tiderade"
	product_slogans = "FreshSweat- push it to the limit, again and again!"
	product_ads = "Drop and give me twenty!;Keep going!;Tideraid- More power for you!;AquaSpessia- Quench your thirst the right way!"
	products = list(/obj/item/reagent_containers/food/drinks/waterbottle/tiderade = 10,
					/obj/item/reagent_containers/food/drinks/waterbottle/tiderade/red = 10,
					/obj/item/reagent_containers/food/drinks/waterbottle/tiderade/blue = 5)
	contraband = list(/obj/item/reagent_containers/food/drinks/waterbottle/tiderade/purple = 2)
	premium = list(/obj/item/reagent_containers/food/drinks/waterbottle/aquaspessia = 5)
	refill_canister = /obj/item/vending_refill/tideraid
	default_price = 50
	extra_price = 250
	payment_department = ACCOUNT_SRV

/obj/item/vending_refill/tideraid
	machine_name = "FreshSweat Drinks"
	icon_state = "refill_cola"
