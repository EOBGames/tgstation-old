// Cereal
/obj/item/food/soup/kil_os
	name = "bowl of Kil-O's"
	desc = "A bowl of oaty rings covered with cold milk. Breakfast at its most simple."
	icon_state = "kil_os"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 8, /datum/reagent/water = 5)
	tastes = list("oat cereal" = 1)
	foodtypes = GRAIN | DAIRY | BREAKFAST
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/soup/fruity_asteroids
	name = "bowl of Fruity Asteroids"
	desc = "A bowl of fruit flavoured cereal loaded with sugar."
	icon_state = "fruity_asteroids"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 8, /datum/reagent/water = 5)
	tastes = list("fruity cereal" = 1)
	foodtypes = GRAIN | FRUIT | DAIRY | BREAKFAST
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/soup/diddy_donuts
	name = "bowl of Diddy Donuts"
	desc = "A bowl of nightmarishly saccharine cereal beloved by few."
	icon_state = "diddy_donuts"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 8, /datum/reagent/water = 5)
	tastes = list("sugary cereal" = 1)
	foodtypes = GRAIN | JUNKFOOD | DAIRY | BREAKFAST
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/soup/meta_muesli
	name = "bowl of Meta-Muesli"
	desc = "A bowl of boring plain cereal- but at least it's good for you, right?"
	icon_state = "meta_muesli"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 8, /datum/reagent/water = 5)
	tastes = list("muesli" = 1, "cardboard" = 1)
	foodtypes = GRAIN | FRUIT | DAIRY | BREAKFAST
	venue_value = FOOD_PRICE_NORMAL

/obj/item/food/soup/bran_requests
	name = "bowl of Bran Requests"
	desc = "A bowl of salty cereal filled with bad raisins. Wonder where it got its name?"
	icon_state = "bran_requests"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 8, /datum/reagent/water = 5)
	tastes = list("bran" = 1, "raisins" = 1, "salt" = 1)
	foodtypes = GRAIN | FRUIT | DAIRY | BREAKFAST
	venue_value = FOOD_PRICE_NORMAL

//single items
/obj/item/food/scrambled_eggs
	name = "scrambled eggs"
	desc = "Also known as a \'Twist\' internationally."
	icon_state = "scrambled_eggs"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("egg" = 1)
	foodtypes = MEAT

/obj/item/food/hash_brown
	name = "hash brown"
	desc = "Hot, crispy, and potato-ey. Everything you want for breakfast, really."
	icon_state = "hash_brown"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("potato" = 1, "onion" = 1, "salt" = 1) //look I'm not trying to make enemies here- does a hash brown require onion?
	foodtypes = VEGETABLES

/obj/item/food/dipping_pot
	name = "little dipping pot"
	desc = ""
