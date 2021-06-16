//Moth Foods, the three C's: cheese, coleslaw, and cotton
//A large emphasis has been put on sharing and multiple portion dishes

//Curd cheese, a general term which I will now proceed to stretch as thin as the toppings on a supermarket sandwich:
//I'll use it as a substitute for ricotta, cottage cheese and quark, as well as any other non-aged, soft grainy cheese
/obj/item/food/curd_cheese
	name = "curd cheese"
	desc = "Known by many names throughout human cuisine, curd cheese is useful for a wide variety of dishes."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "curd_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/cream = 1)
	tastes = list("cream" = 1, "cheese" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cheese_curds
	name = "cheese curds"
	desc = "Not to be mistaken for curd cheese. Tasty deep fried."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "cheese_curds"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	tastes = list("cheese" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/herby_cheese
	name = "herby cheese"
	desc = "As a staple of mothic cuisine, cheese is often augmented with various flavours to keep variety in their diet. Herbs are one such addition, and are particularly beloved."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "herby_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	tastes = list("cheese" = 1, "herbs" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/firm_cheese
	name = "firm cheese"
	desc = "Firm aged cheese, similar in texture to firm tofu. Due to its lack of moisture it's particularly useful for cooking with, as it doesn't melt easily."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "firm_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	tastes = list("aged cheese" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/mozzarella
	name = "mozzarella cheese"
	desc = "Do not call it mothzarella, or you may suffer serious consequences."
	icon = 'icons/obj/food/food.dmi'
	icon_state = "mozzarella"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	tastes = list("mozzarella" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL

//Base ingredients and miscellany, generally not served on their own
/obj/item/food/grilled_cheese
	name = "grilled cheese"
	desc = "As prescribed by Lord Alton, 99.997% of the world's recipes for grilled cheese flat out lie: never once is the cheese grilled, it is merely a grilled sandwich containing melted cheese. This, on the other hand, is truly grilled cheese, grillmarks and all."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "grilled_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/char = 1)
	tastes = list("cheese" = 1, "char" = 1)
	foodtypes = DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/crisp_salad
	name = "crisp salad"
	desc = "A basic salad of lettuce, onion and tomato. Can serve as a perfect base for a million different salads."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "crisp_salad"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("salad" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/toasted_seeds
	name = "toasted seeds"
	desc = "While they're far from filling, toasted seeds are a popular snack amongst the moths. Salt, sugar, or even some more exotic flavours may be added for some extra pep."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "toasted_seeds"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("seeds" = 1)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/pesto
	name = "pesto"
	desc = "A combination of firm cheese, salt, herbs, garlic, oil, and pine nuts. Frequently used as a sauce for pasta or pizza, or eaten on bread."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "pesto"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("pesto" = 1)
	foodtypes = VEGETABLES | DAIRY | NUTS
	w_class = WEIGHT_CLASS_SMALL

//Entrees: categorising food that is 90% cheese and salad is not easy
/obj/item/food/squeaky_stir_fry
	name = "squeaky stir fry"
	desc = "A mothic classic made with cheese curds and tofu (amongst other things). Named for the distinctive squeak of the proteins."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "squeaky_stir_fry"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("cheese" = 1, "tofu" = 1, "veggies" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sweet_chili_lettuce_wrap
	name = "sweet chili lettuce wrap"
	desc = "Grilled cheese and salad in a lettuce wrap, topped with delicious sweet chili sauce."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "sweet_chili_lettuce_wrap"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 4, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("cheese" = 1, "salad" = 1, "sweet chili" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/loaded_curds
	name = "loaded crispy curds"
	desc = "What's better than cheese curds? Deep fried cheese curds! What's better than deep fried cheese curds? Deep fried cheese curds with chili (and more cheese) on top!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "loaded_curds"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("cheese" = 1, "oil" = 1, "chili" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/baked_cheese
	name = "baked cheese"
	desc = "A mothic favourite for sharing. Usually served with crispy bread slices for dipping, because the only thing better than good cheese is good cheese on bread."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "baked_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("cheese" = 1, "bread" = 1)
	foodtypes = DAIRY | GRAIN
	w_class = WEIGHT_CLASS_SMALL

//Baked Green Lasagna at the Whistlestop Cafe
/obj/item/food/raw_green_lasagna
	name = "raw green lasagna"
	desc = "A fine lasagna made with pesto and a herby white sauce, ready to bake. Good for multiple servings."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_green_lasagna"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("cheese" = 1, "pesto" = 1, "pasta" = 1)
	foodtypes = VEGETABLES | GRAIN | NUTS
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/food/flatrootdough/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/green_lasagna, rand(60 SECONDS, 90 SECONDS), TRUE, TRUE)

/obj/item/food/green_lasagna
	name = "green lasagna"
	desc = "A fine lasagna made with pesto and a herby white sauce. Good for multiple servings."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "green_lasagna"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 12, /datum/reagent/consumable/nutriment/vitamin = 18)
	tastes = list("cheese" = 1, "pesto" = 1, "pasta" = 1)
	foodtypes = VEGETABLES | GRAIN | NUTS
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/food/green_lasagna/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/green_lasagna_slice, 6, 30)

/obj/item/food/green_lasagna_slice
	name = "green lasagna slice"
	desc = "A slice of herby, pesto-y lasagna."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "green_lasagna"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("cheese" = 1, "pesto" = 1, "pasta" = 1)
	foodtypes = VEGETABLES | GRAIN | NUTS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_baked_rice
	name = "big rice pan"
	desc = "A big pan of layered potatoes topped with rice and vegetable stock, ready to be baked into a delicious sharing meal."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "big_baked_rice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("rice" = 1, "potato" = 1, "veggies" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/food/raw_baked_rice/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/big_baked_rice, rand(60 SECONDS, 90 SECONDS), TRUE, TRUE)

/obj/item/food/big_baked_rice
	name = "big baked rice"
	desc = "A mothic favourite, baked rice can be filled with a variety of vegetable fillings to make a delicious meal to share. Potatoes are also often layered on the bottom of the cooking vessel to create a flavourful crust which is hotly contested amongst diners."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "big_baked_rice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 18)
	tastes = list("rice" = 1, "potato" = 1, "veggies" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/food/lil_baked_rice
	name = "lil baked rice"
	desc = "A single portion of baked rice, perfect as a side dish, or even as a full meal."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "lil_baked_rice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("rice" = 1, "potato" = 1, "veggies" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fire_baked_corn
	name = "fire-baked corn"
	desc = "A cob of corn, baked in the roasting heat of a wood-fired oven until it blisters and blackens. Beloved as a quick yet flavourful and filling component for dishes on the Fleet."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fire_baked_corn"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 4, /datum/reagent/consumable/char = 1)
	tastes = list("corn" = 1, "char" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/buttered_baked_corn
	name = "buttered baked corn"
	desc = "What's better than fire-baked corn? Fire-baked corn with butter!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "buttered_baked_corn"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 4, /datum/reagent/consumable/char = 1)
	tastes = list("corn" = 1, "char" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fiesta_corn_skillet
	name = "fiesta corn skillet"
	desc = "Sweet, spicy, saucy, and all kinds of corny."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fiesta_corn_skillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 7, /datum/reagent/consumable/char = 1)
	tastes = list("corn" = 1, "chili" = 1, "char" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_ratatouille
	name = "raw ratatouille"
	desc = "Sliced vegetables with a roasted pepper sauce. Delicious, for a peasant food."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_ratatouille"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 7, /datum/reagent/consumable/char = 1)
	tastes = list("veggies" = 1, "roasted peppers" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/ratatouille
	name = "ratatouille"
	desc = "The perfect dish to save your restaurant from a vindictive food critic. Bonus points if you've got a rat in your hat."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "ratatouille"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 7, /datum/reagent/consumable/char = 1)
	tastes = list("veggies" = 1, "roasted peppers" = 1, "char" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

//Soups
/obj/item/food/soup/cottonball_soup
	name = "cottonball soup"
	desc = "A soup made from raw cotton in a flavourful vegetable broth. Enjoyed only by moths and the criminally tasteless."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "cottonball_soup"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("cotton" = 1, "broth" = 1)
	foodtypes = VEGETABLES | CLOTH
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/cheese_soup
	name = "cheese soup"
	desc = "A simple and filling soup made from homemade cheese and stale bread. The curds provide texture while the whey provides volume- and they both provide deliciousness!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "cheese_soup"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/salt = 1)
	tastes = list("cheese" = 1, "cream" = 1, "bread" = 1)
	foodtypes = DAIRY | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/seed_soup
	name = "seed soup"
	desc = "Made by germinating seeds and then boiling them. Produces a particularly bitter broth which is usually balanced by the addition of vinegar."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "seed_soup"
	food_reagents = list(/datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("bitterness" = 1, "sourness" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/vegetarian_chili
	name = "vegetarian chili"
	desc = "For the hombres who don't want carne."
	icon_state = "hotchili"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/capsaicin = 3, /datum/reagent/consumable/tomatojuice = 4, /datum/reagent/consumable/nutriment/vitamin = 4)
	tastes = list("bitterness" = 1, "sourness" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/chaka_bean_stew
	name = "chaka bean stew"
	desc = "A spicy bean stew with lots of veggies, commonly served aboard the fleet as a filling and satisfying meal with rice or bread."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "chaka_bean_stew"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 7, /datum/reagent/consumable/char = 1)
	tastes = list("beans" = 1, "cabbage" = 1, "spicy sauce" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/heartburn_soup
	name = "heartburn soup"
	desc = "A cold soup dish that originated amongst the jungle moths, heartburn soup is named for two things- its rosy pink colour, and its scorchingly hot chilli heat."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "heartburn_soup"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("love" = 1, "hate" = 1)
	foodtypes = VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

//Salads: the bread and butter of mothic cuisine
/obj/item/food/caprese_salad
	name = "caprese salad"
	desc = "While it's far from an original creation of the moths, caprese salad has become a favourite aboard the Fleet due to how simple it is to prepare yet how tasty it is."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "caprese_salad"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("mozzarella" = 1, "tomato" = 1, "balsamic" = 1)
	foodtypes = DAIRY | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/fleet_salad
	name = "fleet salad"
	desc = "As commonly seen at the snack bars and canteens aboard the Fleet. The grilled cheese makes it particularly filling, while the croutons provide a crunchy kick."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "fleet_salad"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("cheese" = 1, "salad" = 1, "bread" = 1)
	foodtypes = DAIRY | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/cotton_salad
	name = "cotton salad"
	desc = "A salad with added cotton and a basic dressing. Presumably either moths are around, or the South's risen again."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "cotton_salad"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("cheese" = 1, "salad" = 1, "bread" = 1)
	foodtypes = VEGETABLES | CLOTH
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/mothic_kachumbari
	name = "mothic kachumbari"
	desc = "Originally a Kenyan recipe, kachumbari is yet another cross-cultural favourite from humanity that has been adopted by the moths- though some ingredients have been necessarily changed."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "mothic_kachumbari"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("onion" = 1, "tomato" = 1, "avocado" = 1, "chili" = 1, "cilantro" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/bulgar_salad
	name = "bulgar salad"
	desc = "A salad of bulgar wheat, tomatoes, onions and a lot of herbs. Refreshing as a side dish."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "bulgar_salad"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("onion" = 1, "tomato" = 1, "avocado" = 1, "chili" = 1, "cilantro" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

//Pizza
/obj/item/food/raw_mothic_margherita
	name = "raw mothic margherita pizza"
	desc = "Another human classic adopted by the moths, mothic pizza is characterised by the use of fresh ingredients, particularly fresh mozzarella, and the use of strong flour to produce a glutenous dough."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_margherita_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("dough" = 1, "tomato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY

/obj/item/food/raw_mothic_margherita/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_margherita, rand(50 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_margherita
	name = "mothic margherita pizza"
	desc = "Another characteristic of mothic pizza is that it's sold by weight- single slices are available for discretionary credits, while a meal ticket can buy a whole pie."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "margherita_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "tomato" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_margherita
	boxtag = "Mothic Margherita"

/obj/item/food/raw_mothic_firecracker
	name = "raw mothic firecracker pizza"
	desc = "A favourite amongst the more adventurous moths, firecracker pizza is HOT HOT HOT!"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_firecracker_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("dough" = 1, "chili" = 1, "corn" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY

/obj/item/food/raw_mothic_firecracker/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_firecracker, rand(50 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_firecracker
	name = "mothic firecracker pizza"
	desc = "They're not kidding when they call this a hot pizza pie."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "firecracker_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "chili" = 1, "corn" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_firecracker
	boxtag = "Vesuvian Firecracker"

/obj/item/food/raw_mothic_five_cheese
	name = "raw mothic five-cheese pizza"
	desc = "For centuries, scholars have asked: how much cheese is too much cheese?"
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_five_cheese_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("dough" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY

/obj/item/food/raw_mothic_five_cheese/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_five_cheese, rand(50 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_five_cheese
	name = "mothic five-cheese pizza"
	desc = "A favourite amongst mice, rats, and English inventors."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "five_cheese_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "cheese" = 1, "more cheese" = 1, "excessive amounts of cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_five_cheese
	boxtag = "Cheeseplosion"

/obj/item/food/raw_mothic_white_pie
	name = "raw mothic white-pie pizza"
	desc = "A pizza made for the tomato haters."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_white_pie_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("dough" = 1, "cheese" = 1, "herbs" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY

/obj/item/food/raw_mothic_white_pie/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_white_pie, rand(50 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_white_pie
	name = "mothic white-pie pizza"
	desc = "You say to-may-to, I say to-mah-to, and we put neither on this pizza."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "white_pie_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "cheese" = 1, "herbs" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY
	slice_type = /obj/item/food/pizzaslice/mothic_white_pie
	boxtag = "Pane Bianco"

/obj/item/food/raw_mothic_pesto
	name = "raw mothic pesto pizza"
	desc = "Pesto is a popular pizza topping for moths, quite possibly because it exemplifies their favourite flavours: cheese, herbs, and veggies."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_pesto_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("dough" = 1, "pesto" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | NUTS

/obj/item/food/raw_mothic_pesto/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_pesto, rand(50 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_pesto
	name = "mothic pesto pizza"
	desc = "Green as the grass in the garden."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "pesto_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "pesto" = 1, "cheese" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | NUTS
	slice_type = /obj/item/food/pizzaslice/pesto
	boxtag = "Presto Pesto"

/obj/item/food/raw_mothic_garlic
	name = "raw mothic garlic pizzabread"
	desc = "Ahh, garlic. A universally loved ingredient, except possibly by vampires."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "raw_garlic_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("dough" = 1, "garlic" = 1, "butter" = 1)
	foodtypes = GRAIN | VEGETABLES

/obj/item/food/raw_mothic_garlic/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/pizza/mothic_garlic, rand(50 SECONDS, 70 SECONDS), TRUE, TRUE)

/obj/item/food/pizza/mothic_garlic
	name = "mothic garlic pizzabread"
	desc = "The best food in the galaxy, hands down."
	icon = 'icons/obj/food/moth.dmi'
	icon_state = "garlic_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 25, /datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/consumable/tomatojuice = 6, /datum/reagent/consumable/nutriment/vitamin = 5)
	tastes = list("crust" = 1, "garlic" = 1, "butter" = 1)
	foodtypes = GRAIN | VEGETABLES | DAIRY | NUTS
	slice_type = /obj/item/food/pizzaslice/pesto
	boxtag = "Garlic Bread alla Moffuchi"

//Sharing Platters
