/obj/machinery/vending/sovietfood
	name = "\improper Vostorgi Novoy Rossii"
	desc = "An old, beat up vending machine selling hot canned food."
	icon_state = "sovietfood"
	light_mask = "sovietfood-light-mask"
	product_ads = "Get taste of home in stars.;All products served hot for hungry traveller.;Food is good, yes!;Full of delight for all tourist!;Welcome to Spinward Stellar Coalition, traveller. Enjoy cuisine of region."
	vend_reply = "Priyatnogo appetita!"
	products = list(/obj/item/food/canned/caviar = 3,
					/obj/item/food/canned/tushonka = 3,
					/obj/item/food/canned/borscht = 3,
					/obj/item/food/canned/russian_pasta = 3,
					/obj/item/food/canned/russian_condensed_milk = 3,
					/obj/item/reagent_containers/food/drinks/soda_cans/russian_tea = 10)
	contraband = list(/obj/item/reagent_containers/food/drinks/bottle/vodka = 5)
	resistance_flags = FIRE_PROOF
	refill_canister = /obj/item/vending_refill/sovietfood
	default_price = PAYCHECK_ASSISTANT * 1.5 //Capitalism is back!! Noooo!!
	extra_price = PAYCHECK_ASSISTANT
	payment_department = NO_FREEBIES
	initial_language_holder = /datum/language_holder/space_russian

/obj/item/vending_refill/sovietfood
	machine_name = "Vostorgi Novoy Rossii"
	icon_state = "refill_cola"
