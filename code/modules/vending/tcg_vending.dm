/obj/machinery/vending/tcg
	name = "\improper Tactical Game Cards CollectHub"
	desc = "Tactical Game Cards:"
	product_ads = "Tactical Game Cards: Collect them all!;Tactical Game Cards: The hottest new product from Nanotrasen Entertainment!;Tactical Game Cards: Give us all your money!;Tactical Game Cards: 2% of all proceeds go to charity!;Tactical Game Cards: Are you annoyed of hearing that name yet?;Tactical Game Cards: Fork over the cash, and nobody gets hurt!;Tactical Game Cards: We've never heard of yumigoes!;Tactical Game Cards: Buy some or you're a LAME-ASS DORK!;Tactical Game Cards: Made from the last of the Californian Redwoods!"
	icon_state = "tcg"
	products = list(/obj/item/cardpack/series_one = 10,
					/obj/item/cardpack/resin = 10,
					/obj/item/storage/card_binder = 10)
	contraband = list(/obj/item/dice/fudge = 9,
					/obj/item/clothing/shoes/wheelys/skishoes=4,
					/obj/item/instrument/musicalmoth=1)
	premium = list(/obj/item/melee/skateboard/pro = 3,
					/obj/item/clothing/shoes/wheelys/rollerskates= 3,
					/obj/item/melee/skateboard/hoverboard = 1,
					/obj/item/storage/box/tail_pin = 1)
	refill_canister = /obj/item/vending_refill/games
	default_price = PAYCHECK_ASSISTANT * 1.5
	extra_price = PAYCHECK_HARD * 1.25
	payment_department = NO_FREEBIES
	light_mask = "games-light-mask"

/obj/item/vending_refill/games
	machine_name = "\improper Good Clean Fun"
	icon_state = "refill_games"
