/obj/machinery/vending/frozen_snacks
	name = "\improper Chilly Billy's Frosty Treats"
	desc = "A machine selling all your favourite ice cream treats- so long as your favourite ice cream treats are made by the Happy Heart Company."
	product_slogans = "Wunderbar: Immer Wunderbar!;Corgice: so cute you won't want to eat them!;Happy Heart: the galaxy's favourite ice cream, 600 years running!"
	product_ads = "Wouldn't your day be better with a cold treat?;Cool off with Chilly Billy!;Oh my god it's so juicy!;Have a snack.;Snacks are good for you!;Have some more Getmore!;Best quality snacks straight from mars.;We love chocolate!;Try our new jerky!"
	icon_state = "frozen_snacks"
	panel_type = "panel2"
	light_mask = "snack-light-mask"
	products = list(
		/obj/item/wrapped_popsicle/creamsicle_berry = 6,
		/obj/item/wrapped_popsicle/creamsicle_orange = 6,
		/obj/item/wrapped_popsicle/jumbo = 6,
		/obj/item/wrapped_popsicle/nogga_black = 6,
		/obj/item/wrapped_popsicle/corgice = 6,
		/obj/item/wrapped_popsicle/wunderbar = 6,
		/obj/item/food/cornchips/random = 6,
		/obj/item/food/sosjerky = 6,
		/obj/item/food/no_raisin = 6,
		/obj/item/food/peanuts = 6,
		/obj/item/food/peanuts/random = 3,
		/obj/item/food/cnds = 6,
		/obj/item/food/cnds/random = 3,
		/obj/item/food/semki = 6,
		/obj/item/reagent_containers/food/drinks/dry_ramen = 3,
		/obj/item/storage/box/gum = 3,
		/obj/item/food/energybar = 6
	)
	contraband = list(
		/obj/item/food/syndicake = 6,
		/obj/item/food/peanuts/ban_appeal = 3,
		/obj/item/food/candy/bronx = 1
	)
	premium = list(
		/obj/item/food/spacers_sidekick = 3,
		/obj/item/food/pistachios = 3
	)
	refill_canister = /obj/item/vending_refill/snack
	canload_access_list = list(ACCESS_KITCHEN)
	default_price = PAYCHECK_ASSISTANT * 0.6
	extra_price = PAYCHECK_EASY
	payment_department = ACCOUNT_SRV
	input_display_header = "Chef's Food Selection"

/obj/item/vending_refill/snack
	machine_name = "Getmore Chocolate Corp"

/obj/machinery/vending/snack/blue
	icon_state = "snackblue"

/obj/machinery/vending/snack/orange
	icon_state = "snackorange"

/obj/machinery/vending/snack/green
	icon_state = "snackgreen"

/obj/machinery/vending/snack/teal
	icon_state = "snackteal"
