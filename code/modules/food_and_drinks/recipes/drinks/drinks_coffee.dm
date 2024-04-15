/datum/chemical_reaction/drink/iced_fresh_brew_coffee
	results = list(/datum/reagent/consumable/coffee/iced_coffee/fresh_brew = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/fresh_brew = 4, /datum/reagent/consumable/ice = 1)

/datum/chemical_reaction/drink/instant_coffee
	results = list(/datum/reagent/consumable/coffee/instant = 5)
	required_reagents = list(/datum/reagent/consumable/dry_instant_coffee = 1, /datum/reagent/water = 4)

/datum/chemical_reaction/drink/iced_instant_coffee
	results = list(/datum/reagent/consumable/coffee/iced_coffee/instant = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/instant = 4, /datum/reagent/consumable/ice = 1)

/datum/chemical_reaction/drink/cold_brew_coffee
	results = list(/datum/reagent/consumable/coffee/iced_coffee/fresh_brew = 5)
	required_reagents = list(/datum/reagent/toxin/coffeepowder = 2, /datum/reagent/water = 3) //higher ratio than normal, cold brew requires more grounds to water than typical hot brew methods
	required_temp = 300 // room temperature or below or it's not cold brew, it's warm brew, and nobody wants *warm* brew
	optimal_temp = 281 // around 8 celsius, or about fridge temperature
	rate_up_lim = 2 //low and slow, baby
	is_cold_recipe = TRUE

/datum/chemical_reaction/drink/espresso_con_panna
	results = list(/datum/reagent/consumable/coffee/espresso_con_panna = 3)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 2, /datum/reagent/consumable/whipped_cream = 1)

/datum/chemical_reaction/drink/espresso_romano
	results = list(/datum/reagent/consumable/coffee/espresso_romano = 3)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 2, /datum/reagent/consumable/lemonjuice = 1)

/datum/chemical_reaction/drink/americano
	results = list(/datum/reagent/consumable/coffee/americano = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 2, /datum/reagent/water = 3)
	required_temp = 353 // boiling water!

/datum/chemical_reaction/drink/iced_americano
	results = list(/datum/reagent/consumable/coffee/iced_coffee/americano = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/americano = 4, /datum/reagent/consumable/ice = 1)

/datum/chemical_reaction/drink/red_eye_coffee
	results = list(/datum/reagent/consumable/coffee/red_eye = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 2, /datum/reagent/consumable/coffee/fresh_brew = 3)

/datum/chemical_reaction/drink/cappuccino
	results = list(/datum/reagent/consumable/coffee/cappuccino = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 2, /datum/reagent/consumable/foamed_milk = 3)

/datum/chemical_reaction/drink/mocha
	results = list(/datum/reagent/consumable/coffee/mocha = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 2, /datum/reagent/consumable/hot_coco = 2, /datum/reagent/consumable/steamed_milk = 1)

/datum/chemical_reaction/drink/caffe_latte
	results = list(/datum/reagent/consumable/coffee/caffe_latte = 6)
	required_reagents = list(/datum/reagent/consumable/coffee/espresso = 1, /datum/reagent/consumable/coffee/steamed_milk = 5)

/datum/chemical_reaction/drink/cafe_au_lait
	results = list(/datum/reagent/consumable/coffee/cafe_au_lait = 2)
	required_reagents = list(/datum/reagent/consumable/coffee/fresh_brew = 1, /datum/reagent/consumable/steamed_milk = 1)

/datum/chemical_reaction/drink/maple_white
	results = list(/datum/reagent/consumable/coffee/maple_white = 5)
	required_reagents = list(/datum/reagent/consumable/coffee/cafe_au_lait = 3, /datum/reagent/consumable/maple_syrup = 1, /datum/reagent/consumable/vanilla_syrup = 1)

/datum/chemical_reaction/drink/cafe_miel
	results = list(/datum/reagent/consumable/coffee/cafe_miel = 5)
	required_reagents = list(/datum/reagent/consumable/cafe_au_lait = 3, /datum/reagent/consumable/honey = 1, /datum/reagent/consumable/cinnamon = 1)

// SOUP-TYPE RECIPES

// TEA
/datum/chemical_reaction/food/soup/fresh_black_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea = 30
	)

/datum/chemical_reaction/food/soup/teabag_black_tea
	required_ingredients = list(
		/obj/item/teabag = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea = 30
	)

/datum/chemical_reaction/food/soup/fresh_green_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/green = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/green = 30
	)

/datum/chemical_reaction/food/soup/teabag_green_tea
	required_ingredients = list(
		/obj/item/teabag/green = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/green = 30
	)

/datum/chemical_reaction/food/soup/fresh_oolong_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/oolong = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/oolong = 30
	)

/datum/chemical_reaction/food/soup/teabag_oolong_tea
	required_ingredients = list(
		/obj/item/teabag/oolong = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/oolong = 30
	)

/datum/chemical_reaction/food/soup/fresh_white_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/white = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/white = 30
	)

/datum/chemical_reaction/food/soup/teabag_white_tea
	required_ingredients = list(
		/obj/item/teabag/white = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/white = 30
	)

/datum/chemical_reaction/food/soup/fresh_earl_grey
	required_ingredients = list(
		/obj/item/food/tea_leaves/earl_grey = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/earl_grey = 30
	)

/datum/chemical_reaction/food/soup/teabag_earl_grey
	required_ingredients = list(
		/obj/item/teabag/earl_grey = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/earl_grey = 30
	)

/datum/chemical_reaction/food/soup/fresh_jasmine_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/jasmine = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/jasmine = 30
	)

/datum/chemical_reaction/food/soup/teabag_jasmine_tea
	required_ingredients = list(
		/obj/item/teabag/jasmine = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/jasmine = 30
	)

/datum/chemical_reaction/food/soup/fresh_chamomile_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/chamomile = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/chamomile = 30
	)

/datum/chemical_reaction/food/soup/teabag_chamomile_tea
	required_ingredients = list(
		/obj/item/teabag/chamomile = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/chamomile = 30
	)

/datum/chemical_reaction/food/soup/fresh_roobios
	required_ingredients = list(
		/obj/item/food/tea_leaves/rooibos = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/rooibos = 30
	)

/datum/chemical_reaction/food/soup/teabag_rooibos
	required_ingredients = list(
		/obj/item/teabag/rooibos = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/rooibos = 30
	)

/datum/chemical_reaction/food/soup/fresh_hibiscus_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/hibiscus = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/hibiscus = 30
	)

/datum/chemical_reaction/food/soup/teabag_hibiscus_tea
	required_ingredients = list(
		/obj/item/teabag/hibiscus = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/hibiscus = 30
	)

/datum/chemical_reaction/food/soup/fresh_rose_tea
	required_ingredients = list(
		/obj/item/food/tea_leaves/rose = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/rose = 30
	)

/datum/chemical_reaction/food/soup/teabag_rose_tea
	required_ingredients = list(
		/obj/item/teabag/rose = 1,
	)
	required_reagents = list(
		/datum/reagent/water = 30
	)
	results = list(
		/datum/reagent/consumable/tea/rose = 30
	)

// SYRUPS
// Almond Syrup
/datum/reagent/consumable/almond_syrup
	name = "Almond Syrup"
	description = "A sweetened syrup made of almonds and sugar. Goes great in coffee."

/datum/chemical_reaction/food/soup/almond_syrup
	required_reagents = list(
		/datum/reagent/consumable/almond_milk = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/almond_syrup = 30,
	)

// Berry Syrup
/datum/reagent/consumable/berry_syrup
	name = "Berry Syrup"
	description = "A sweetened syrup made of berries and sugar. Goes great in tea, or on ice cream."

/datum/chemical_reaction/food/soup/berry_syrup
	required_reagents = list(
		/datum/reagent/consumable/berryjuice = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/berry_syrup = 30,
	)

// Chili Syrup
/datum/reagent/consumable/chili_syrup
	name = "Chili Syrup"
	description = "A sweetened syrup made of chilis and sugar."

/datum/chemical_reaction/food/soup/chili_syrup
	required_reagents = list(
		/datum/reagent/consumable/capsaicin = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/chili_syrup = 30,
	)

// Cinnamon Dolce Syrup
/datum/reagent/consumable/cinnamon_dolce_syrup
	name = "Cinnamon Dolce Syrup"
	description = "A sweetened syrup made of cinnamon and sugar."

/datum/chemical_reaction/food/soup/chili_syrup
	required_reagents = list(
		/datum/reagent/consumable/cinnamon = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/cinnamon_syrup = 30,
	)

// Coffee Syrup
/datum/reagent/consumable/coffee_syrup
	name = "Coffee Syrup"
	description = "A sweetened syrup made of coffee and sugar."

/datum/chemical_reaction/food/soup/coffee_syrup
	required_reagents = list(
		/datum/reagent/consumable/coffee/fresh_brew = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/coffee_syrup = 30,
	)

// Hazelnut Syrup
/datum/reagent/consumable/hazelnut_syrup
	name = "Hazelnut Syrup"
	description = "A sweetened syrup made of hazelnuts and sugar. Goes great in coffee."

/datum/chemical_reaction/food/soup/hazelnut_syrup
	required_reagents = list(
		/datum/reagent/consumable/hazelnut_milk = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/hazelnut_syrup = 30,
	)

// Kortanut Syrup
/datum/reagent/consumable/kortanut_syrup
	name = "Kortanut Syrup"
	description = "A sweetened syrup made of korta nuts and sugar. Goes great in coffee."

/datum/chemical_reaction/food/soup/korta_syrup
	required_reagents = list(
		/datum/reagent/consumable/korta_milk = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/kortanut_syrup = 30,
	)

// Peppermint Syrup
/datum/reagent/consumable/peppermint_syrup
	name = "Peppermint Syrup"
	description = "A sweetened syrup made of peppermint and sugar. Goes great in coffee."

/datum/chemical_reaction/food/soup/hazelnut_syrup
	required_reagents = list(
		/datum/reagent/consumable/menthol = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/peppermint_syrup = 30,
	)

// Pumpkin Spice Syrup
/datum/reagent/consumable/pumpkin_spice_syrup
	name = "Pumpkin Spice Syrup"
	description = "A sweetened syrup made of pumpkin, sugar and spices."

/datum/chemical_reaction/food/soup/pumpkin_spice_syrup
	required_reagents = list(
		/datum/reagent/consumable/pumpkinjuice = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
		/datum/reagent/consumable/cinnamon = 5,
	)
	results = list(
		/datum/reagent/consumable/pumpkin_spice_syrup = 30,
	)

// Vanilla Syrup
/datum/reagent/consumable/vanilla_syrup
	name = "Vanilla Syrup"
	description = "A sweetened syrup made of vanilla and sugar. Goes great in coffee."

/datum/chemical_reaction/food/soup/vanilla_syrup
	required_reagents = list(
		/datum/reagent/consumable/vanilla = 10,
		/datum/reagent/consumable/sugar = 10,
		/datum/reagent/consumable/water = 15,
	)
	results = list(
		/datum/reagent/consumable/vanilla_syrup = 30,
	)
