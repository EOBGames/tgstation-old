////////////////////////////////////////////DONK POCKETS////////////////////////////////////////////

/obj/item/food/donkpocket
	name = "\improper Donk-pocket"
	desc = "The food of choice for the seasoned traitor."
	icon_state = "donkpocket"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
	)
	tastes = list("meat" = 2, "dough" = 2, "laziness" = 1)
	foodtypes = GRAIN
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

	/// What type of donk pocket we're warmed into via baking or microwaving.
	var/warm_type = /obj/item/food/donkpocket/warm
	/// The lower end for how long it takes to bake
	var/baking_time_short = 25 SECONDS
	/// The upper end for how long it takes to bake
	var/baking_time_long = 30 SECONDS

/obj/item/food/donkpocket/make_bakeable()
	AddComponent(/datum/component/bakeable, warm_type, rand(baking_time_short, baking_time_long), TRUE, TRUE)

/obj/item/food/donkpocket/make_microwaveable()
	AddElement(/datum/element/microwavable, warm_type)

/obj/item/food/donkpocket/warm
	name = "warm Donk-pocket"
	desc = "The heated food of choice for the seasoned traitor."
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/medicine/omnizine = 6,
	)
	tastes = list("meat" = 2, "dough" = 2, "laziness" = 1)
	foodtypes = GRAIN

	// Warmed donk pockets will burn if you leave them in the oven or microwave.
	warm_type = /obj/item/food/badrecipe
	baking_time_short = 10 SECONDS
	baking_time_long = 15 SECONDS

/obj/item/food/dankpocket
	name = "\improper Dank-pocket"
	desc = "The food of choice for the seasoned botanist."
	icon_state = "dankpocket"
	food_reagents = list(
		/datum/reagent/toxin/lipolicide = 3,
		/datum/reagent/drug/space_drugs = 3,
		/datum/reagent/consumable/nutriment = 4,
	)
	tastes = list("meat" = 2, "dough" = 2)
	foodtypes = GRAIN | VEGETABLES

/obj/item/food/donkpocket/spicy
	name = "\improper Spicy-pocket"
	desc = "The classic snack food, now with a heat-activated spicy flair."
	icon_state = "donkpocketspicy"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/capsaicin = 2,
	)
	tastes = list("meat" = 2, "dough" = 2, "spice" = 1)
	foodtypes = GRAIN
	warm_type = /obj/item/food/donkpocket/warm/spicy

/obj/item/food/donkpocket/warm/spicy
	name = "warm Spicy-pocket"
	desc = "The classic snack food, now maybe a bit too spicy."
	icon_state = "donkpocketspicy"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/medicine/omnizine = 2,
		/datum/reagent/consumable/capsaicin = 5,
	)
	tastes = list("meat" = 2, "dough" = 2, "weird spices" = 2)
	foodtypes = GRAIN

/obj/item/food/donkpocket/teriyaki
	name = "\improper Teriyaki-pocket"
	desc = "An east-asian take on the classic stationside snack."
	icon_state = "donkpocketteriyaki"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/soysauce = 2,
	)
	tastes = list("meat" = 2, "dough" = 2, "soy sauce" = 2)
	foodtypes = GRAIN
	warm_type = /obj/item/food/donkpocket/warm/teriyaki

/obj/item/food/donkpocket/warm/teriyaki
	name = "warm Teriyaki-pocket"
	desc = "An east-asian take on the classic stationside snack, now steamy and warm."
	icon_state = "donkpocketteriyaki"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 3,
		/datum/reagent/medicine/omnizine = 2,
		/datum/reagent/consumable/soysauce = 2,
	)
	tastes = list("meat" = 2, "dough" = 2, "soy sauce" = 2)
	foodtypes = GRAIN

/obj/item/food/donkpocket/pizza
	name = "\improper Pizza-pocket"
	desc = "Delicious, cheesy and surprisingly filling."
	icon_state = "donkpocketpizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/consumable/tomatojuice = 2,
	)
	tastes = list("meat" = 2, "dough" = 2, "cheese"= 2)
	foodtypes = GRAIN
	warm_type = /obj/item/food/donkpocket/warm/pizza

/obj/item/food/donkpocket/warm/pizza
	name = "warm Pizza-pocket"
	desc = "Delicious, cheesy, and even better when hot."
	icon_state = "donkpocketpizza"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/medicine/omnizine = 2,
		/datum/reagent/consumable/tomatojuice = 2,
	)
	tastes = list("meat" = 2, "dough" = 2, "melty cheese"= 2)
	foodtypes = GRAIN

/obj/item/food/donkpocket/honk
	name = "\improper Honk-pocket"
	desc = "The award-winning donk-pocket that won the hearts of clowns and humans alike."
	icon_state = "donkpocketbanana"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/banana = 4,
	)
	tastes = list("banana" = 2, "dough" = 2, "children's antibiotics" = 1)
	foodtypes = GRAIN

	warm_type = /obj/item/food/donkpocket/warm/honk

/obj/item/food/donkpocket/warm/honk
	name = "warm Honk-pocket"
	desc = "The award-winning donk-pocket, now warm and toasty."
	icon_state = "donkpocketbanana"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/medicine/omnizine = 2,
		/datum/reagent/consumable/banana = 4,
		/datum/reagent/consumable/laughter = 6,
	)
	tastes = list("banana" = 2, "dough" = 2, "children's antibiotics" = 1)
	foodtypes = GRAIN

/obj/item/food/donkpocket/berry
	name = "\improper Berry-pocket"
	desc = "A relentlessly sweet donk-pocket first created for use in Operation Dessert Storm."
	icon_state = "donkpocketberry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/consumable/berryjuice = 3,
	)
	tastes = list("dough" = 2, "jam" = 2)
	foodtypes = GRAIN

	warm_type = /obj/item/food/donkpocket/warm/berry

/obj/item/food/donkpocket/warm/berry
	name = "warm Berry-pocket"
	desc = "A relentlessly sweet donk-pocket, now warm and delicious."
	icon_state = "donkpocketberry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 4,
		/datum/reagent/medicine/omnizine = 2,
		/datum/reagent/consumable/berryjuice = 3,
	)
	tastes = list("dough" = 2, "warm jam" = 2)
	foodtypes = GRAIN

/obj/item/food/donkpocket/gondola
	name = "\improper Gondola-pocket"
	desc = "The choice to use real gondola meat in the recipe is controversial, to say the least." //Only a monster would craft this.
	icon_state = "donkpocketgondola"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/gondola_mutation_toxin = 5,
	)
	tastes = list("meat" = 2, "dough" = 2, "inner peace" = 1)
	foodtypes = GRAIN

	warm_type = /obj/item/food/donkpocket/warm/gondola

/obj/item/food/donkpocket/warm/gondola
	name = "warm Gondola-pocket"
	desc = "The choice to use real gondola meat in the recipe is controversial, to say the least."
	icon_state = "donkpocketgondola"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/nutriment/protein = 2,
		/datum/reagent/medicine/omnizine = 2,
		/datum/reagent/gondola_mutation_toxin = 10,
	)
	tastes = list("meat" = 2, "dough" = 2, "inner peace" = 1)
	foodtypes = GRAIN

/obj/item/food/donkpocket/popdonk
	name = "\improper PopDonk! Starberry Surprise!"
	desc = "Donk's galaxy-famous toaster pastry, stuffed with strawberry jam."
	icon_state = "popdonk_strawberry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
	)
	tastes = list("sugar" = 2, "strawberry" = 2, "pastry" = 1)
	foodtypes = GRAIN | FRUIT

	warm_type = /obj/item/food/donkpocket/warm/popdonk

/obj/item/food/donkpocket/warm/popdonk
	name = "warm PopDonk! Starberry Surprise!"
	desc = "Donk's galaxy-famous toaster pastry, stuffed with strawberry jam and served supernova hot."
	icon_state = "popdonk_strawberry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/medicine/omnizine = 2,
	)
	tastes = list("sugar" = 2, "strawberry" = 2, "pastry" = 1)
	foodtypes = GRAIN | FRUIT

/obj/item/food/donkpocket/popdonk/choco_banana
	name = "\improper PopDonk! Go Chocobananas!"
	desc = "Donk's galaxy-famous toaster pastry, with a filling of chocolate and banana."
	icon_state = "popdonk_choco_banana"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
	)
	tastes = list("sugar" = 2, "chocolate" = 1, "banana" = 1, "pastry" = 1)
	foodtypes = GRAIN | FRUIT

	warm_type = /obj/item/food/donkpocket/warm/popdonk/choco_banana

/obj/item/food/donkpocket/warm/popdonk/choco_banana
	name = "warm PopDonk! Go Chocobananas!"
	desc = "Donk's galaxy-famous toaster pastry, with a red-hot filling of chocolate and banana."
	icon_state = "popdonk_strawberry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/medicine/omnizine = 2,
	)
	tastes = list("sugar" = 2, "chocolate" = 1, "banana" = 1, "pastry" = 1)
	foodtypes = GRAIN | FRUIT

/obj/item/food/donkpocket/popdonk/cherry_berry
	name = "\improper PopDonk! Very Cherry Berry!"
	desc = "Donk's galaxy-famous toaster pastry, with a medley of berry and cherry flavours inside."
	icon_state = "popdonk_cherry_berry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
	)
	tastes = list("sugar" = 2, "cherry" = 1, "berry" = 1, "pastry" = 1)
	foodtypes = GRAIN | FRUIT

	warm_type = /obj/item/food/donkpocket/warm/popdonk/cherry_berry

/obj/item/food/donkpocket/warm/popdonk/cherry_berry
	name = "warm PopDonk! Very Cherry Berry!"
	desc = "Donk's galaxy-famous toaster pastry, with a piping-hot medley of berry and cherry flavours inside."
	icon_state = "popdonk_cherry_berry"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/medicine/omnizine = 2,
	)
	tastes = list("sugar" = 2, "cherry" = 1, "berry" = 1, "pastry" = 1)
	foodtypes = GRAIN | FRUIT

/obj/item/food/donkpocket/popdonk/fudge_sundae
	name = "\improper PopDonk! Superfudge Sundae!"
	desc = "Donk's galaxy-famous toaster pastry, with a fudgy filling and sprinkles on top, just like a real sundae."
	icon_state = "popdonk_fudge_sundae"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
	)
	tastes = list("sugar" = 2, "chocolate fudge" = 1, "sprinkles" = 1, "pastry" = 1)
	foodtypes = GRAIN

	warm_type = /obj/item/food/donkpocket/warm/popdonk/fudge_sundae

/obj/item/food/donkpocket/warm/popdonk/fudge_sundae
	name = "warm PopDonk! Very Cherry Berry!"
	desc = "Donk's galaxy-famous toaster pastry, with a fudgy filling and served hot, just like a real sundae isn't."
	icon_state = "popdonk_fudge_sundae"
	food_reagents = list(
		/datum/reagent/consumable/nutriment = 3,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/medicine/omnizine = 2,
	)
	tastes = list("sugar" = 2, "chocolate fudge" = 1, "sprinkles" = 1, "pastry" = 1)
	foodtypes = GRAIN
