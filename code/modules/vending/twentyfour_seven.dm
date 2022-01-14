/obj/machinery/vending/twentyfour_seven
	name = "\improper 24-Seven food"
	desc = "The hideously diseased heart of any 24-Seven store."
	product_slogans = "All hot dogs made with 100%* beef!;Dozens of nacho toppings available!"
	product_ads = "The healthiest!;Award-winning chocolate bars!;Mmm! So good!;Oh my god it's so juicy!;Have a snack.;Snacks are good for you!;Have some more Getmore!;Best quality snacks straight from mars.;We love chocolate!;Try our new jerky!"
	icon_state = "snack"
	panel_type = "panel2"
	light_mask = "snack-light-mask"
	products = list(
		/obj/item/food/power_chew_dog = 5,
		/obj/item/food/donkritos_nachos = 5,
		/obj/item/food/pizzaslice/margherita = 5,
		/obj/item/food/pizzaslice/meat = 5,
		/obj/item/food/donkpocket/warm/nacho = 5
	)
	refill_canister = /obj/item/vending_refill/snack
	default_price = PAYCHECK_ASSISTANT * 0.6
	extra_price = PAYCHECK_EASY
	payment_department = NO_FREEBIES
	input_display_header = "Chef's Food Selection"

/obj/machinery/vending/twentyfour_seven/stationside //for 24-Seven branches on stations, comes with a hefty price markup and a selection that adds some stock from snack machines (also at a markup)
	name = "\improper 24-Seven Stop"
	desc = "A little slice of 24-Seven on your local station. Remember- you can never escape the convenience!"
	product_ads = "The healthiest!;Award-winning chocolate bars!;Mmm! So good!;Oh my god it's so juicy!;Have a snack.;Snacks are good for you!;Have some more Getmore!;Best quality snacks straight from mars.;We love chocolate!;Try our new jerky!"
	icon_state = "snack"
	panel_type = "panel2"
	light_mask = "snack-light-mask"
	products = list(
		/obj/item/food/power_chew_dog = 5,
		/obj/item/food/donkritos_nachos = 5,
		/obj/item/food/pizzaslice/margherita = 5,
		/obj/item/food/pizzaslice/meat = 5,
		/obj/item/food/donkpocket/warm/nacho = 5,
		/obj/item/food/spacetwinkie = 3,
		/obj/item/food/candy = 3,
		/obj/item/food/sosjerky = 3,
		/obj/item/food/peanuts = 3,
		/obj/item/food/cnds = 3,
		/obj/item/reagent_containers/food/drinks/chug_cup = 5
	)
	premium = list(
		/obj/item/reagent_containers/food/drinks/chug_cup/huge = 5
	)
	refill_canister = /obj/item/vending_refill/snack
	default_price = PAYCHECK_MEDIUM * 1.5
	payment_department = NO_FREEBIES //you're buying from an external company
	input_display_header = "Chef's Food Selection"
