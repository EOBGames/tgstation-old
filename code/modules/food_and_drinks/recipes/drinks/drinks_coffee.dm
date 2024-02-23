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
