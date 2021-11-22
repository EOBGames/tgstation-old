//Lizard Foods, for lizards (and weird humans!)

//Meat Dishes

/obj/item/food/raw_tiziran_sausage
	name = "raw Tiziran blood sausage"
	desc = "A raw Tiziran blood sausage, ready to be cured on a drying rack."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "raw_lizard_sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/blood = 3)
	tastes = list("meat" = 1, "black pudding" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_tiziran_sausage/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dryable,  /obj/item/food/tiziran_sausage)

/obj/item/food/tiziran_sausage
	name = "\improper Tiziran blood sausage"
	desc = "A coarse dry-cured blood sausage, traditionally made by farmers in the farmlands around Zagoskeld. Similar in texture to old-Earth Spanish chorizo."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5)
	tastes = list("meat" = 1, "black pudding" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_headcheese
	name = "raw headcheese block"
	desc = "A common food on Tizira, headcheese is traditionally made of an animal's head, with the organs removed, boiled until it falls apart, at which point it is collected, strained of moisture, salted heavily, packed into blocks, and left to dry and age for several months. The resulting hard block tastes similar to cheese."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "raw_lizard_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/salt = 5)
	tastes = list("meat" = 1, "salt" = 1)
	foodtypes = MEAT | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_headcheese/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/dryable,  /obj/item/food/headcheese)

/obj/item/food/headcheese
	name = "headcheese block"
	desc = "A cured block of headcheese. Delicious, if you're a lizard."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_cheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/salt = 5)
	tastes = list("cheese" = 1, "salt" = 1)
	foodtypes = MEAT | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/headcheese/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/headcheese_slice, 5, 30)

/obj/item/food/headcheese_slice
	name = "headcheese slice"
	desc = "A slice of headcheese, useful for making sandwiches and snacks. Or surviving the cold Tiziran winters."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_cheese_slice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 1, /datum/reagent/consumable/salt = 1)
	tastes = list("cheese" = 1, "salt" = 1)
	foodtypes = MEAT | GROSS
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/shredded_lungs
	name = "crispy shredded lung stirfry"
	desc = "Crispy lung strips, with veggies and a spicy sauce. Delicious, if you like lungs."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lung_stirfry"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("meat" = 1, "heat" = 1, "veggies" = 1)
	foodtypes = MEAT | VEGETABLES | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/tsatsikh
	name = "tsatsikh"
	desc = "A Tiziran dish consisting of spiced ground offal, stuffed into a stomach and boiled. Pretty foul to anyone who's not used to the taste."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "tsatsikh"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5)
	tastes = list("assorted minced organs" = 1)
	foodtypes = MEAT | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/liver_pate
	name = "liver pate"
	desc = "A rich, meaty paste made from liver, meat, and a few additions for extra flavour."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "pate"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3)
	tastes = list("liver" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/moonfish_eggs
	name = "moonfish eggs"
	desc = "The moonfish lays large, transparent white eggs which are prized in lizard cooking. Their flavour is similar to caviar, but generally is described as deeper and more complex."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_eggs"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("caviar" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/moonfish_caviar
	name = "moonfish caviar paste"
	desc = "A rich paste made from moonfish eggs. Generally the only way most lizards can get them, and used fairly heavily in coastal cooking."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_caviar"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2)
	tastes = list("caviar" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/lizard_escargot
	name = "desert snail cocleas"
	desc = "Another example of cultural crossover between lizards and humans, desert snail escargot is closer to the Roman dish cocleas than the contemporary French escargot. It's a common street food in the desert cities."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_escargot"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/garlic = 1)
	tastes = list("snails" = 1, "garlic" = 1, "oil" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/fried_blood_sausage
	name = "fried blood sausage"
	desc = "A blood sausage, battered and deep fried. Commonly served with fries as a quick and simple snack on the streets of Zagoskeld."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "fried_blood_sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/salt = 1, /datum/reagent/consumable/cooking_oil = 1)
	tastes = list("black pudding" = 1, "batter" = 1, "oil" = 1)
	foodtypes = MEAT | FRIED
	w_class = WEIGHT_CLASS_SMALL

//Why does like, every language on the planet besides English call them pommes? Who knows, who cares- the lizards call them it too, because funny.
/obj/item/food/lizard_fries
	name = "loaded poms-franzisks"
	desc = "One of the many human foods to make its way to the lizards was french fries, which are called poms-franzisks in Draconic. When topped with barbecued meat and sauce, they make a hearty meal."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_fries"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/salt = 1, /datum/reagent/consumable/bbqsauce = 2)
	tastes = list("fries" = 2, "bbq sauce" = 1, "barbecued meat" = 1)
	foodtypes = MEAT | VEGETABLES | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/brain_pate
	name = "eyeball-and-brain pate"
	desc = "A thick pink puree made from finely chopped poached eyeballs and brains, fried onions, and fat. Lizards swear it's delicious!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "brain_pate"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5)
	tastes = list("brains" = 2)
	foodtypes = MEAT | VEGETABLES | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/crispy_headcheese
	name = "crispy breaded headcheese"
	desc = "A delicious snack from the streets of Zagoskeld, consisting of headcheese coated in rootbread breadcrumbs. Commonly served with fries."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "crispy_headcheese"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/cooking_oil = 1)
	tastes = list("cheese" = 1, "oil" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kebab/picoss_skewers
	name = "picoss skewer"
	desc = "A popular Tiziran streetfood consisting of vinegar-marinated armorfish on a skewer with onion and chillis."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "picoss_skewer"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/vinegar= 1, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("fish" = 1, "acid" = 1, "onion" = 1, "heat" = 1)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/nectar_larvae
	name = "nectar larvae"
	desc = "Little crispy larvae in a korta nectar based sweet and spicy sauce. Bugtastic!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "nectar_larvae"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/korta_nectar = 2, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("meat" = 1, "sweet" = 1, "heat" = 1)
	foodtypes = GROSS | MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/mushroomy_stirfry
	name = "mushroomy stirfry"
	desc = "A medley of mushrooms, made to meet your monstrous munchies. Marvelous!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "mushroomy_stirfry"
	food_reagents = list(/datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("marvelous mushrooms" = 1, "sublime shrooms" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

//Fish Dishes
/obj/item/food/grilled_moonfish
	name = "grilled moonfish"
	desc = "A slab of grilled moonfish. Traditionally served over scalloped roots with a wine-based sauce."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "grilled_moonfish"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment = 3)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	burns_on_grill = TRUE
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/moonfish_demiglace
	name = "moonfish demiglace"
	desc = "A slab of beautifully seared moonfish on a bed of potatoes and carrots, with a wine and demiglace reduction on top. Simply marvelous."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "moonfish_demiglace"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment = 3)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/lizard_surf_n_turf
	name = "\improper Zagosk surf 'n' turf smorgasbord"
	desc = "A massive platter of Tizira's finest meat and seafood, typically shared by groups at the beach. Of course, nothing's stopping you eating it on your own... fatass."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "surf_n_turf"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 10, /datum/reagent/consumable/nutriment/vitamin = 10)
	tastes = list("surf" = 1, "turf" = 1)
	foodtypes = MEAT | SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_BULKY

//Spaghetti Dishes

/obj/item/food/spaghetti/nizaya
	name = "nizaya pasta"
	desc = "A form of root and nut pasta originally native to the oceanside regions of Tizira. It's similar in texture and appearance to gnocchi."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "nizaya"
	food_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS

/obj/item/food/spaghetti/snail_nizaya
	name = "desert snail nizaya"
	desc = "A high class pasta dish from Tizira's vineyard region of Valyngia. Traditionally made with only the finest Tiziran wine... but the human swill will do, in a pinch."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "snail_nizaya"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/protein = 2, /datum/reagent/consumable/nutriment/vitamin = 6)
	tastes = list("snails" = 1, "wine" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | MEAT | NUTS

/obj/item/food/spaghetti/garlic_nizaya
	name = "garlic-and-oil nizaya"
	desc = "A lizard adaptation of the Italian pasta dish, aglio e olio, made with nizaya pasta."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "garlic_nizaya"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 8)
	tastes = list("garlic" = 1, "oil" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | NUTS

/obj/item/food/spaghetti/demit_nizaya
	name = "demit nizaya"
	desc = "A sweet, creamy nizaya pasta dish made with korta milk and nectar."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "demit_nizaya"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/korta_nectar = 2)
	tastes = list("peppery sweet" = 1, "veggies" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES | SUGAR | NUTS

/obj/item/food/spaghetti/mushroom_nizaya
	name = "mushroom nizaya"
	desc = "A nizaya pasta dish made with seraka mushrooms and quality oil. Has a pronounced nutty flavour."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "mushroom_nizaya"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("savouriness" = 1, "nuttiness" = 1, "gnocchi" = 1)
	foodtypes = VEGETABLES

//Dough Dishes

/obj/item/food/rootdough
	name = "root dough"
	desc = "A root based dough, made with nuts and tubers. Used in a wide range of Tiziran cooking."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootdough"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS

/obj/item/food/rootdough/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/bread/root, rand(30 SECONDS, 45 SECONDS), TRUE, TRUE)

/obj/item/food/rootdough/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_ROLLINGPIN, /obj/item/food/flatrootdough, 1, 30)

/obj/item/food/flatrootdough
	name = "flat rootdough"
	desc = "Flattened rootdough, ready to be made into a flatbread, or cut into segments."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "flat_rootdough"
	food_reagents = list(/datum/reagent/consumable/nutriment = 6)
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS

/obj/item/food/flatrootdough/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/rootdoughslice, 3, 30)

/obj/item/food/flatrootdough/MakeGrillable()
	AddComponent(/datum/component/grillable, /obj/item/food/root_flatbread, rand(25 SECONDS, 35 SECONDS), TRUE, TRUE)

/obj/item/food/rootdoughslice
	name = "rootdough ball"
	desc = "A ball of root dough. Perfect for making pasta or rolls."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootdough_slice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS

/obj/item/food/rootdoughslice/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/spaghetti/nizaya, 1, 30)

/obj/item/food/rootdoughslice/MakeBakeable()
	AddComponent(/datum/component/bakeable, /obj/item/food/rootroll, rand(30 SECONDS, 45 SECONDS), TRUE, TRUE)

/obj/item/food/root_flatbread
	name = "root flatbread"
	desc = "A plain grilled root flatbread. Can be topped with a variety of foods that lizards like to eat."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "root_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 7)
	tastes = list("bread" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	burns_on_grill = TRUE

/obj/item/food/rootroll
	name = "rootroll"
	desc = "A dense, chewy roll, made from roots. A nice companion to a bowl of soup."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootroll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3)
	w_class = WEIGHT_CLASS_SMALL
	tastes = list("roll" = 1) // the roll tastes of roll.
	foodtypes = VEGETABLES | NUTS
	burns_in_oven = TRUE

//Bread Dishes

/obj/item/food/bread/root
	name = "rootbread"
	desc = "The lizard equivalent to bread, made from tubers like potatoes and yams mixed with ground nuts and seeds. Noticably denser than regular bread."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_bread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 10)
	tastes = list("bread" = 8, "nuts" = 2)
	foodtypes = VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL
	venue_value = FOOD_PRICE_CHEAP
	burns_in_oven = TRUE

/obj/item/food/bread/root/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/customizable_reagent_holder, /obj/item/food/bread/empty, CUSTOM_INGREDIENT_ICON_FILL, max_ingredients = 8)

/obj/item/food/bread/root/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/breadslice/root, 5, 30)

/obj/item/food/breadslice/root
	name = "rootbread slice"
	desc = "A slice of dense, chewy rootbread."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_breadslice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	tastes = list("bread" = 8, "nuts" = 2)
	foodtypes = VEGETABLES | NUTS
	venue_value = FOOD_PRICE_TRASH

/obj/item/food/breadslice/root/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/customizable_reagent_holder, null, CUSTOM_INGREDIENT_ICON_STACK)

//Pizza Dishes
/obj/item/food/pizza/rustic_flatbread
	name = "rustic flatbread"
	desc = "A simple Tiziran country dish, popular as a side to meat or fish dishes. Topped with herbs and oil."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rustic_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/vitamin = 10)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1)
	slice_type = null
	foodtypes = VEGETABLES | NUTS
	boxtag = "Tiziran Flatbread"

/obj/item/food/pizza/italic_flatbread
	name = "\improper Italic flatbread"
	desc = "The introduction of human foods to Tizira led to an advancement in lizard cooking- the Italic flatbread is now a common sight on the menus of takeout stores on the planet."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "italic_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 10, /datum/reagent/consumable/nutriment/vitamin = 15)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1, "tomato" = 1, "meat" = 1)
	slice_type = null
	foodtypes = VEGETABLES | NUTS | MEAT
	boxtag = "Italic Flatbread"

/obj/item/food/pizza/imperial_flatbread
	name = "\improper Imperial flatbread"
	desc = "A flatbread topped with pate, pickled vegetables, and cubed headcheese. Not very suited to anyone's tastes but the lizards."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "imperial_flatbread"
	food_reagents = list(/datum/reagent/consumable/nutriment = 15, /datum/reagent/consumable/nutriment/protein = 10, /datum/reagent/consumable/nutriment/vitamin = 15)
	tastes = list("bread" = 1, "herb" = 1, "oil" = 1, "garlic" = 1, "tomato" = 1, "meat" = 1)
	slice_type = null
	foodtypes = VEGETABLES | MEAT | NUTS | GROSS
	boxtag = "Imperial Victory Flatbread"

//Sandwiches/Toast Dishes
/obj/item/food/emperor_roll
	name = "emperor roll"
	desc = "A popular sandwich on Tizira, named in honour of the Imperial family."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "emperor_roll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 7, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("bread" = 1, "cheese" = 1, "liver" = 1, "caviar" = 1)
	foodtypes = VEGETABLES | NUTS | MEAT | GROSS | SEAFOOD
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/honey_roll
	name = "honey sweetroll"
	desc = "A sweetened rootroll with sliced fruit, enjoyed as a seasonal dessert on Tizira."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "honey_roll"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/consumable/honey = 2)
	tastes = list("bread" = 1, "honey" = 1, "fruit" = 1)
	foodtypes = VEGETABLES | NUTS | FRUIT
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

//Soup Dishes
/obj/item/food/soup/atrakor_dumplings
	name = "\improper Atrakor dumpling soup"
	desc = "A bowl of rich, meaty dumpling soup, traditionally served during the festival of Atrakor's Might on Tizira. The dumplings are shaped like the Night Sky Lord himself."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "atrakor_dumplings"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("bone broth" = 1, "onion" = 1, "potato" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS

/obj/item/food/soup/meatball_noodles
	name = "meatball noodle soup"
	desc = "A hearty noodle soup made from meatballs and nizaya in a rich broth. Commonly topped with a handful of chopped nuts."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "meatball_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("bone broth" = 1, "meat" = 1, "gnocchi" = 1, "peanuts" = 1)
	foodtypes = MEAT | VEGETABLES | NUTS

/obj/item/food/soup/black_broth
	name = "\improper Tiziran black broth"
	desc = "A bowl of sausage, onion, blood and vinegar, served ice cold. Every bit as rough as it sounds."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "black_broth"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 8, /datum/reagent/blood = 5)
	tastes = list("vinegar" = 1, "metal" = 1)
	foodtypes = MEAT | VEGETABLES | GROSS

/obj/item/food/soup/jellyfish
	name = "jellyfish stew"
	desc = "A slimy bowl of jellyfish stew. It jiggles if you shake it."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "jellyfish_stew"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment = 3)
	tastes = list("slime" = 1)
	foodtypes = MEAT | VEGETABLES | GROSS

/obj/item/food/soup/rootbread_soup
	name = "rootbread soup"
	desc = "A big bowl of spicy, savoury soup made with rootbread. Heavily seasoned, and very tasty."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "rootbread_soup"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 3)
	tastes = list("bread" = 1, "egg" = 1, "chili" = 1, "garlic" = 1)
	foodtypes = MEAT | VEGETABLES

//Egg Dishes
/obj/item/food/black_eggs
	name = "black scrambled eggs"
	desc = "A country dish from rural Tizira. Made with eggs, blood, and foraged greens. Traditionally eaten with rootbread and a spicy sauce."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "black_eggs"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("eggs" = 1, "greens" = 1, "blood" = 1)
	foodtypes = MEAT | BREAKFAST | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/patzikula
	name = "patzikula"
	desc = "A smooth and spicy tomato-based sauce topped with eggs and baked. Delicious."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "patzikula"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/nutriment/vitamin = 4, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("eggs" = 1, "tomato" = 1, "heat" = 1)
	foodtypes = VEGETABLES | MEAT | BREAKFAST
	w_class = WEIGHT_CLASS_SMALL

//Cakes/Sweets

/obj/item/food/cake/korta_brittle
	name = "korta brittle slab"
	desc = "A big slab of korta nut brittle. So sugary it should be a crime!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "korta_brittle"
	food_reagents = list(/datum/reagent/consumable/sugar = 10, /datum/reagent/consumable/nutriment = 5, /datum/reagent/consumable/korta_nectar = 5)
	tastes = list("peppery heat" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR

/obj/item/food/cake/korta_brittle/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/cakeslice/korta_brittle, 5, 30)

/obj/item/food/cakeslice/korta_brittle
	name = "korta brittle slice"
	desc = "A little slice of korta nut brittle. A diabetic's worst enemy."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "korta_brittle_slice"
	food_reagents = list(/datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/korta_nectar = 1)
	tastes = list("peppery heat" = 1, "sweetness" = 1)
	foodtypes = NUTS | SUGAR

/obj/item/food/snowcones/korta_ice
	name = "korta ice"
	desc = "Shaved ice, korta nectar and berries. A sweet treat to eat to beat summer heat!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "korta_ice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/ice = 4, /datum/reagent/consumable/berryjuice = 4)
	tastes = list("peppery sweet" = 1, "berry" = 1)
	foodtypes = NUTS | SUGAR | FRUIT

/obj/item/food/kebab/candied_mushrooms
	name = "candied mushrooms"
	desc = "A slightly bizarre dish from Tizira, consisting of seraka mushrooms coated with caramel on a skewer. Carries a pronounced 'sweet and savoury' kick."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "candied_mushrooms"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/consumable/caramel = 3)
	tastes = list("savouriness" = 1, "sweetness" = 1)
	foodtypes = SUGAR | VEGETABLES | GROSS

//Misc Dishes
/obj/item/food/sauerkraut
	name = "sauerkraut"
	desc = "Pickled cabbage, as made famous by Germans, and which has become common in lizard cooking, where it is known as Zauerkrat."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "sauerkraut"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3)
	tastes = list("cabbage" = 1, "acid" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/lizard_dumplings
	name = "\improper Tiziran dumplings"
	desc = "Mashed root vegetables, mixed with korta flour and boiled to produce a large, round and slightly spicy dumpling. Commonly eaten in soup."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "lizard_dumplings"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	tastes = list("potato" = 1, "earthy heat" = 1)
	foodtypes = VEGETABLES | NUTS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/steeped_mushrooms
	name = "steeped seraka mushrooms"
	desc = "Seraka mushrooms that have been steeped in alkaline water to remove the extract, thereby making them completely safe to consume."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "steeped_mushrooms"
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 1)
	tastes = list("savouriness" = 1, "nuttiness" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned_jellyfish
	name = "canned gunner jellyfish"
	desc = "A can of gunner jellyfish packed in brine. Contains a mild hallucinogen which is destroyed by cooking."
	icon = 'icons/obj/food/canned.dmi'
	icon_state = "canned_jellyfish"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/toxin/mindbreaker = 2, /datum/reagent/consumable/salt = 1)
	tastes = list("slime" = 1, "burning" = 1, "salt" = 1)
	foodtypes = SEAFOOD | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/desert_snails
	name = "canned desert snails"
	desc = "Giant snails from the Tiziran desert, packaged in brine. Shells included. Probably best not eaten raw, unless you're a lizard."
	icon = 'icons/obj/food/canned.dmi'
	icon_state = "canned_snails"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/salt = 2)
	tastes = list("snails" = 1)
	foodtypes = MEAT | GROSS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/larvae
	name = "canned bee larva"
	desc = "A can of bee larva packaged in honey. Probably appetizing to someone."
	icon = 'icons/obj/food/canned.dmi'
	icon_state = "canned_larvae"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("sweet bugs" = 1)
	foodtypes = MEAT | GROSS
	w_class = WEIGHT_CLASS_SMALL

//LIZARD FOOD 2: SON OF LIZARD FOOD
/obj/item/food/blackened_mudfish
	name = "blackened mudfish"
	desc = "The simplest (and arguably best) way to cook mudfish: coat it in spices, and cook it on a grill."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "blackened_mudfish"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("fish" = 1, "spices" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/armorfish_boil
	name = "boiled armorfish"
	desc = "Armorfish boiled with the shell on in a tasty broth. Are you a true Lowlander, or are you a pretender? It's all in how you eat this." //True lowlanders eat the shell, too
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "armorfish_boil"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("armorfish" = 1, "spices" = 1)
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/swamp_roots
	name = "swamp roots"
	desc = "A crispy fry-up of root vegetables with sausage and veggies. As tasty as its name is horrible."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "swamp_roots"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("potatoes" = 1, "peppers" = 1, "spicy sausage" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/barbecue_nizaya
	name = "barbecue nizaya"
	desc = "Nizaya pasta topped off with slices of brisket, fried onions, and barbecue sauce."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "barbecue_nizaya"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("gnocchi" = 1, "fried onions" = 1, "barbecue brisket" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/raw_tilotozisk_sausage
	name = "raw Tilotozisk sausage"
	desc = "An offal sausage made from tripe, onions, herbs and seasonings, and most importantly kas'sa wine, typical of the city of Tilotoz."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "raw_tilotozisk_sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("spicy sausage" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/smoked_tilotozisk_sausage
	name = "smoked Tilotozisk sausage"
	desc = "An offal sausage made from tripe, onions, herbs, seasonings, kas'sa wine, and most importantly, smoked to perfection."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "smoked_tilotozisk_sausage"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("spicy sausage" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bloodbug_cuts
	name = "bloodbug cuts"
	desc = "On Tizira, giant bloodbugs are not allowed to be sold as meat due to being disease vectors. Fortunately, you're not on Tizira."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "bloodbug_cuts"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("blood" = 1, "bug" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/armorfish_sandwich
	name = "armorfish Pauper's Respite sandwich"
	desc = "A Pauper's Respite sandwich, loaded up with fried armorfish, mayonnaise, bacon, and veggies."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "armorfish_sandwich"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("bread" = 1, "fried armorfish" = 1, "mayo" = 1, "bacon" = 1, "salad" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/tilo_sausage_sandwich
	name = "sausage hash Pauper's Respite sandwich"
	desc = "A Pauper's Respite sandwich, loaded up with sausage hash, barbecue sauce, bacon, a fried egg, and veggies."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "tilo_sausage_sandwich"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("bread" = 1, "spicy sausage" = 1, "potatoes" = 1, "bbq sauce" = 1, "bacon" = 1, "egg" = 1, "salad" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/roast_pork_sandwich
	name = "roast pork Pauper's Respite sandwich"
	desc = "A Pauper's Respite sandwich, loaded up with roast pork, mustard, bacon, cheese, and pickles."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "roast_pork_sandwich"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("bread" = 1, "pork" = 1, "bacon" = 1, "mustard" = 1, "cheese" = 1, "pickles" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/baked_anobar_wood
	name = "baked anobar wood"
	desc = "Anobar wood, baked to soften it off- it's got a texture roughly similar to silken tofu."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "baked_anobar_wood"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("sweet cinnamon" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/butcher_pie
	name = "butcher's pie"
	desc = "Similar to shepard's pie or cottage pie, butcher's pie is made with chop, mixed with some seasoning and vegetables, then topped off with mashed root vegetables and baked."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "butcher_pie"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("meat" = 1, "gravy" = 1, "onion" = 1, "potato" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/badlands_beans
	name = "badlands beans"
	desc = "Baked beans with barbecue meat and fried onions, then cooked down to a thick syrupy sauce."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "badlands_beans"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("brisket" = 1, "beans" = 1, "fried onions" = 1, "barbecue sauce" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/chop_stew
	name = "chop stew"
	desc = "Chop (a corruption of the Draconic, Kopp) is a euphemistic term for the lowest quality cuts of meat available. While edible and safe to eat, they need particular attention to become decent food, like putting them in a big old stew."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "chop_stew"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("meat" = 1, "tomato" = 1, "garlic" = 1, "chilli heat" = 1, "red sauce" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/badlands_goat_roast
	name = "badlands goat roast"
	desc = "A whole goat, organs and fur removed, rubbed down with seasoning and roasted to perfection. Served with drippin's for dippin'."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "badlands_goat_roast"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("goat" = 1, "spices" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/royal_tajine
	name = "renazisk tajine"
	desc = "Made with tsatzloatl, as is traditional in the deserts of the East."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "royal_tajine"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("turkey" = 1, "warm spices" = 1, "dried fruit" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sacza_stewed_bones
	name = "sacza stewed bones"
	desc = "Bones stewed in a spicy sacza sauce, with tender and juicy bone marrow. An old inn favourite that's still common in saczerias across Tizira."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "sacza_stewed_bones"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("sacza" = 1, "bone marrow" = 1, "spices" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/student_mess
	name = "student mess"
	desc = "A campus favourite due to its cheap ingredients, student mess is typically made with whatever meat's lying around the dormitory, alongside spices, root vegetables, and sacza."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "student_mess"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("meat" = 1, "potatoes" = 1, "spices" = 1, "sacza" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/eggs_imperiaux
	name = "eggs impériaux"
	desc = "Invented at the Imperial Hotel in Klareka Bay, eggs impériaux started as a frequent request made by a crown prince, who would sneak out to the hotel for lunch when he bored of court politics. After he ascended to the throne, he granted an Imperial warrant to the hotel, who added the dish to their permanent menu."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "eggs_imperiaux"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("steak" = 1, "toast" = 1, "eggs" = 1, "mushrooms" = 1, "cream" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bisque_de_soldat
	name = "bisque de soldat"
	desc = "Another invention of the Imperial Hotel, bisque de soldat, or soldier's bisque, is based upon camp soup recipes from the Tiziran army, but with the refined French style typical of the Imperial."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "bisque_de_soldat"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("fish" = 1, "vegetables" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/scallops_tizirique
	name = "scallops tizirique"
	desc = "The final dish created by Chef Patil-Dansat of the Imperial Hotel prior to his young and tragic death in a skiing accident, scallops tizirique are simply seared then served with a wine-and-squid-ink reduction. The dish is named for Tizira, makes good use of both human and lizard cooking techniques, and has come to be used as a symbol of human-lizard unity by activists, as Dansat would have wanted."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "scallops_tizirique"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("scallops" = 1, "squid ink" = 1, "wine" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/traka_tolorisk
	name = "traka tolorisk"
	desc = "Traka tolorisk, or 'priest's pockets' in Galactic Common, are small dumplings made of nizaya dough, similar to Italian ravioli or German maultasche. Fillings vary- near the coast fish is a common choice, though inland frequently other meats or even vegetarian versions are popular. The name's origin is unknown, lost to the sands of time."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "traka_tolorisk"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("fish" = 1, "dough" = 1, "herbs" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/berry_puffs
	name = "berry puffs"
	desc = "A popular treat in the fruit-growing regions of Valynga, berry puffs are made from almost every type of berry, and have a light, crisp texture, similar to meringue."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "berry_puffs"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("berries" = 1, "sugar" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/minosk_sun_carpaccio
	name = "\improper Minosk sun carpaccio"
	desc = "The Minosk, or 'lesser sea', is Tizira's smallest ocean. In addition, it falls almost entirely within the tropical regions of the planet, making it particularly warm and giving it appeal as a tourist destination. This carpaccio is a favourite at resorts along its sunkissed shores, using fresh fish caught daily from its warm, crystal clear waters."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "minosk_sun_carpaccio"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("fish" = 1, "oil" = 1, "vinegar" = 1, "seasonings" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/winter_palace_pavlova
	name = "winter palace pavlova"
	desc = "A dessert showcasing the sweet best of the Tiziran winter, as frequently served at the Szrada Merakorum- the Winter Palace- to the royal family and their guests, especially at their lavish soirees in the Solstice Gardens."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "winter_palace_pavlova"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("berries" = 1, "korta nectar" = 1, "apple" = 1, "cinnamon" = 1, "pear" = 1, "plum" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/tiziran_sweet_tea_fancies
	name = "\improper Tiziran sweet tea fancies"
	desc = "As with all members of high society, the Tiziran upper class regularly amuses itself with fetes and galas- including the ubiquitous garden party. Typically at these gatherings light snacks are served, including the tea fancy- a general title for small sweet amuse-bouches intended to be eaten alongside mushroom tea."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "tiziran_sweet_tea_fancies"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("berries" = 1, "sugar" = 1, "cake" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/tiziran_savoury_tea_fancies
	name = "\improper Tiziran savoury tea fancies"
	desc = "Much like their sweet counterpart, the savoury tea fancy is a common sight at garden parties throughout Tizira's high society. Unlike their sweet counterpart, however, savoury tea fancies tend to be more varied and less one-dimensional."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "tiziran_savoury_tea_fancies"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("meat" = 1, "rootbread" = 1, "vegetables" = 1, "sauce" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/silverscale_sable
	name = "mysterious sable biscuit"
	desc = "A Tiziran sable biscuit with a mysterious symbol baked into it, and silver leaf tucked into the details."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "silverscale_sable"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("biscuit" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sword_biscuits
	name = "pelasert biscuits"
	desc = "Named for their sword-like shape, pelasert biscuits are a common sight in bakeries across Zagoskeld, and the whole of the Tiziran old world. Typically they receive a dusting of sugar, although some may also be iced."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "sword_biscuits"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("biscuit" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/shooters_pie
	name = "shooter's pie"
	desc = "A favourite of game hunters on Tizira, the Shooter's Pie is made with wild game from the hunt, set in gelatine with a boiled egg in the centre, and is typically eaten cold while on the next hunt."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "shooters_pie"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("game" = 1, "pastry" = 1, "egg" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/herb_jelly
	name = "herb jelly"
	desc = "A savoury spreadable jelly made from herbs and seasonings set in vinegar and gelatine. Due to its fairly neutral flavour it's used as an accompaniment to many roast meats, as well as many other dishes."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "herb_jelly"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("herbs" = 1, "spices" = 1, "vinegar" = 1)
	w_class = WEIGHT_CLASS_SMALL

//Preserved food, direct from Tizira, and with many brands
/obj/item/food/jarred_heritage_geckos
	name = "jar of Amovar brand pickled heritage geckos"
	desc = "As monkeys are to humans, the so-called Heritage Geckos are to lizards. They're also tasty, and keep well once they're pickled."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "jarred_heritage_geckos"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("lizards" = 1, "vinegar" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/candied_sand_crickets
	name = "\improper Fruits of the Desert brand candied sand crickets"
	desc = "Crickets, candied thoroughly, then rolled in cocoa powder. Bittersweet, yet satisfying."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "candied_sand_crickets"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("bugs" = 1, "sugar" = 1, "cocoa" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/potted_zagosk_crab
	name = "\improper Blue Horizons brand potted Zagosk crab with tomato sauce"
	desc = "Crab meat, tomato sauce, fine oil, garlic, seasonings. Simple and delicious, and perfect on roottoast as a quick breakfast."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "potted_zagosk_crab"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("crab" = 1, "tomato" = 1, "seasonings" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/anobar_jelly
	name = "\improper Razida brand anobar jelly"
	desc = "An odd jam made from anobar trees and honey. Remember: Razida anobar jelly: a full tree in every jar!"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "anobar_jelly"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("sweet cinnamon" = 1, "bitter tonic" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/jarred_clot
	name = "\improper Smiling Soldier brand jarred clot"
	desc = "Seasoned clotted blood in a jar for spreading on roottoast. Made with seraka extract, for 'consistent clotting'. Apparently, no other brand clots it better. Is that meant to be good or bad?"
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "jarred_clot"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("blood" = 1, "seasonings" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/assorted_pickled_offal
	name = "\improper Finest Quality brand assorted pickled offal"
	desc = "Oh god."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "assorted_pickled_offal"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("jellified organs" = 1, "acid" = 1, "'meat'" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/jellyfish_jerky
	name = "\improper Zagoskeld Fisheries brand air-dried jellyfish jerky"
	desc = "Air dried jellyfish jerky. It's got a lovely mix of bell and stingers."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "jellyfish_jerky"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("jellyfish" = 1, "spices" = 1)
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/canned/salted_pinchbugs
	name = "\improper Dael-Paeska brand salted pinchbugs"
	desc = "Little stinging insects found frequently around water in Tizira's swamps, pinchbugs are reviled by lizards when they're alive, and cherished as a salty snack by them when they're dead."
	icon = 'icons/obj/food/lizard.dmi'
	icon_state = "salted_pinchbugs"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 4, /datum/reagent/consumable/honey = 2)
	tastes = list("bugs" = 1, "salt" = 1)
	w_class = WEIGHT_CLASS_SMALL
