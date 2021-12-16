//send help, I am being forced against my will to make a felinid food PR, I'm being held somewhere in New Zeal- OH GOD NO HE'S COME BACK, AND HE'S GOT THE JUICER-
/obj/item/food/salad/sushi_rice
	name = "sushi rice"
	desc = "A bowl of sushi rice, ready for making sushi with. Obviously."
	icon_state = "sushi_rice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("rice" = 5, "vinegar" = 1)
	foodtypes = GRAIN | BREAKFAST

//sushi time
/obj/item/food/sushi
	name = "generic sushi"

//Nigiri- a ball of rice with a topping, sometimes bound in seaweed
/obj/item/food/sushi/tamago_nigiri
	name = "tamago nigiri"
	desc = "A nigirizushi roll made with a sweet omelette topping, bound in nori."
	icon_state = "tamago_nigiri"

/obj/item/food/sushi/ebi_nigiri
	name = "ebi nigiri"
	desc = "A nigirizushi roll made with a shrimp topping."
	icon_state = "ebi_nigiri"

/obj/item/food/sushi/unagi_nigiri
	name = "unagi nigiri"
	desc = "A nigirizushi roll made with a barbecued eel topping, bound in nori."
	icon_state = "shrimp_nigiri"

/obj/item/food/sushi/tako_nigiri
	name = "tako nigiri"
	desc = "A nigirizushi roll made with an octopus topping, bound in nori."
	icon_state = "tako_nigiri"

/obj/item/food/sushi/sake_nigiri
	name = "sake nigiri"
	desc = "A nigirizushi roll made with a salmon topping."
	icon_state = "sake_nigiri"

/obj/item/food/sushi/supesukoi_nigiri
	name = "supēsukoi nigiri"
	desc = "A nigirizushi roll made with a space carp topping."
	icon_state = "supesukoi_nigiri"

//Maki- the classic sushi roll, made with a filling wrapped in rice and bound in nori
/obj/item/food/sushi/kappa_maki
	name = "kappa maki"
	desc = "A maki roll made with a cucumber filling."
	icon_state = "kappa_maki"

/obj/item/food/sushi/spicy_tuna_maki
	name = "spicy tuna maki"
	desc = "An uramaki roll made with a tuna and sriracha filling."
	icon_state = "spicy_tuna_maki"

/obj/item/food/sushi/california_maki
	name = "california maki"
	desc = "An uramaki roll made with a cucumber, crab, avocado and mayonaise filling, topped with tobiko roe."
	icon_state = "california_maki"

/obj/item/food/sushi/dragon_maki
	name = "dragon maki"
	desc = "An uramaki roll made with a shrimp tempura, cucumber and mayonaise filling, topped with avocado."
	icon_state = "dragon_maki"

/obj/item/food/sushi/spider_maki
	name = "spider maki"
	desc = "A maki roll made with a spider-leg tempura, avocado, cucumber and spicy mayonaise filling."
	icon_state = "spider_maki"

/obj/item/food/sushi/samurai_maki
	name = "samurai maki"
	desc = "A maki roll made with a barbecued eel, carrot, cucumber and sriracha filling."
	icon_state = "samurai_maki"

//Sashimi- fish, sliced thin, served raw
/obj/item/food/sushi/fugu_sashimi
	name = "fugu sashimi"
	desc = "Sashimi made from the deadly fugu fish."
	icon_state = "fugu_sashimi"

/obj/item/food/sushi/xeno_sashimi
	name = "xeno sashimi"
	desc = "Sashimi made from xenomorph meat- wait, what?"
	icon_state = "xeno_sashimi"

/obj/item/food/sushi/tako_sashimi
	name = "tako sashimi"
	desc = "Sashimi made from octopus."
	icon_state = "tako_sashimi"

/obj/item/food/sushi/ebi_sashimi
	name = "ebi sashimi"
	desc = "Sashimi made from shrimp."
	icon_state = "ebi_sashimi"

/obj/item/food/sushi/same_sashimi
	name = "same sashimi"
	desc = "Sashimi made from shark."
	icon_state = "same_sashimi"

/obj/item/food/sushi/sake_sashimi
	name = "sake sashimi"
	desc = "Sashimi made from salmon."
	icon_state = "sake_sashimi"

//Miscellaneous Sushis
/obj/item/food/sushi/onigiri
	name = "onigiri"
	desc = "A ball of rice, filled with umeboshi, and wrapped with nori."
	icon_state = "onigiri"

/obj/item/food/sushi/inarizushi
	name = "inarizushi"
	desc = "A pouch of fried tofu, stuffed with sushi rice."
	icon_state = "inarizushi"

/obj/item/food/sushi/oshizushi
	name = "sake oshizushi"
	desc = "A pressed block of salmon sushi."
	icon_state = "oshizushi"

//I don't even fuckin like sushi, why on earth am I making this?

//Japanese Dishes
/obj/item/food/katsu_fillet
	name = "katsu fillet"
	desc = "Breaded and deep fried meat, used for a variety of dishes."
	icon_state = "katsu_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "breading" = 1)
	foodtypes = MEAT | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/katsu_meal
	name = "katsu meal"
	desc = "Breaded and deep fried meat, with a topping of tonkatsu sauce and a side of fries and shredded lettuce."
	icon_state = "katsu_meal"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "breading" = 1, "lettuce" = 1, "tonkatsu sauce" = 1, "fries" = 1)
	foodtypes = MEAT | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/katsu_curry
	name = "katsu curry"
	desc = "Breaded and deep fried meat, topped with curry sauce and served on a bed of rice."
	icon_state = "katsu_curry"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "breading" = 1, "curry" = 1, "rice" = 1)
	foodtypes = MEAT | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/omurice
	name = "omurice"
	desc = "An omelette stuffed with ketchup fried rice and topped with ketchup."
	icon_state = "omurice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("egg" = 1, "fried rice" = 1, "ketchup" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/shoyu_ramen
	name = "shōyu ramen"
	desc = "A soy-sauce based ramen, with soba noodles, fishcake, barbecued meat, sliced onion, and a boiled egg."
	icon_state = "shoyu_ramen"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "fishcakes" = 1, "onion" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

//Korean Food
/obj/item/food/bulgogi_noodles
	name = "bulgogi noodles"
	desc = "Korean barbecue meat served with noodles! Made with gochujang, for extra spicy flavour."
	icon_state = "bulgogi_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "fishcakes" = 1, "onion" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bibimbap
	name = "bibimbap"
	desc = "A Korean dish consisting of rice and various toppings, served in a roasting hot stone bowl."
	icon_state = "bulgogi_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "fishcakes" = 1, "onion" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL
