//send help, I am being forced against my will to make a felinid food PR, I'm being held somewhere in New Zeal- OH GOD NO HE'S COME BACK, AND HE'S GOT THE JUICER-
//Martian food! As one of Earth's biggest and most accessible colonies, Mars has a diverse culture- though it's mostly influenced by the initial waves of colonists from both East Asia and Europe, and to a lesser extent by Americans.
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

//I don't even fuckin like sushi, why on earth am I making this?

//Ingredients
/obj/item/food/kimchi
	name = "kimchi"
	desc = "A classic Korean dish, although this particular prep is more similar to the Martian fusion style- shredded cabbage with chilli peppers, konbu, bonito, and a mix of spices."
	icon_state = "kimchi"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("spicy cabbage" = 1, "seafood" = 1, "spices" = 1)
	foodtypes = VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kamaboko
	name = "kamaboko"
	desc = "A Japanese-style fishcake frequently used in snacks and ramen."
	icon_state = "kamaboko_sunrise"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kamaboko/Initialize(mapload)
	. = ..()
	if(prob(25))
		icon_state = "kamaboku_smiling"
	else if(prob(25))
		icon_state = "kamaboku_star"
	else if(prob(25))
		icon_state = "kamaboku_spiral"

/obj/item/food/sambal
	name = "sambal"
	desc = "A spice paste from Indonesia, used widely in cooking throughout South East Asia."
	icon_state = "sambal"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("chilli heat" = 1)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

//Japanese Dishes
/obj/item/food/katsu_fillet
	name = "katsu fillet"
	desc = "Breaded and deep fried meat, used for a variety of dishes."
	icon_state = "katsu_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "breading" = 1)
	foodtypes = MEAT | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/satay_katsu
	name = "erdesei-katsu meal"
	desc = "Breaded and deep fried meat, with a topping of Martian-style Erdeseisauß, a side of spicy fries and a kimchi salad."
	icon_state = "satay_katsu"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "breading" = 1, "spicy cabbage" = 1, "peanut sauce" = 1, "spicy fries" = 1)
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

/obj/item/food/soup/hurricane_rice
	name = "hurricane rice"
	desc = "Inspired by nasi goreng, this classic dish comes straight from Prospect, on Mars. It's named for its distinctive cooking style, where the frying rice is given lots of airtime while being flipped, mostly because it looks really cool for the customers."
	icon_state = "hurricane rice"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("rice" = 1, "meat" = 1, "spices" = 1, "pineapple" = 1)
	foodtypes = MEAT | VEGETABLES | FRUIT | PINEAPPLE
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/ikareis
	name = "ikareis"
	desc = "A spicy rice dish made with sushi rice, squid-ink, peppers, onions, chorizo, and a lot of paprika."
	icon_state = "ikareis"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("paprika" = 1, "rice" = 1, "squid ink" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/omurreis
	name = "omurreis"
	desc = "An omelette stuffed with Spanish-style squid-ink rice and topped with a spicy tomato salsa."
	icon_state = "omurreis"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("egg" = 1, "paprika" = 1, "rice" = 1, "squid ink" = 1, "salsa" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/shoyu_ramen
	name = "shōyu ramen"
	desc = "A soy-sauce based ramen, with noodles, fishcake, barbecued meat, sliced onion, and a boiled egg."
	icon_state = "shoyu_ramen"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "fishcakes" = 1, "onion" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/bulgogi_noodles
	name = "bulgogi noodles"
	desc = "Korean barbecue meat served with noodles! Made with gochujang, for extra spicy flavour."
	icon_state = "bulgogi_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "fishcakes" = 1, "onion" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bulgogi_teller
	name = "bulgogi teller"
	desc = "Fried bulgogi beef topped with garlic-cream sauce and served alongside spicy fries and a kimchi salad."
	icon_state = "bulgogi_teller"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "spicy fries" = 1, "garlic" = 1, "spicy cabbage" = 1)
	foodtypes = MEAT | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bibimbap
	name = "bibimbap"
	desc = "A Korean dish consisting of rice and various toppings, served in a roasting hot stone bowl."
	icon_state = "bulgogi_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "fishcakes" = 1, "onion" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/frankramen_miy_kaezu
	name = "frankramen miy käzu"
	desc = "A beef and onion ramen with cheese- blending several cultural influences seemlessly into one tasty dish."
	icon_state = "chileramen"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("meat" = 1, "noodles" = 1, "soy sauce" = 1, "broth" = 1, "cheese" = 1, "chilli" = 1, "egg" = 1)
	foodtypes = MEAT | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/brat_kimchi
	name = "brat-kimchi"
	desc = "Fried kimchi, mixed with sugar and topped with bratwurst. A popular dish at izakayas on Mars."
	icon_state = "brat_kimchi"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("sausage" = 1, "kimchi" = 1, "sweetness" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/tonkatsuwurst
	name = "tonkatsuwurst"
	desc = "A cultural fusion between German and Japanese cooking, tonkatsuwurst blends the currywurst and tonkatsu sauce into something familiar, yet new."
	icon_state = "tonkatsuwurst"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("sausage" = 1, "brown sauce" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/izakaya_tempomix
	name = "izakaya tempomix"
	desc = "A popular mix of tempura-fried food, typically served at izakayas throughout New Osaka. Items include shrimp, catfish, calamari, tofu, chicken, onions, and mushrooms, although really anything can show up, depending on where you go."
	icon_state = "izakaya_tempomix"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("fish" = 1, "tofu" = 1, "meat" = 1, "onion" = 1, "mushroom" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/mars_tofu
	name = "\improper Huoxing tofu"
	desc = "An adaptation of mapo tofu made famous in Prospect, the foodie Mecca of Mars. It even kinda looks like Mars, if you really squint."
	icon_state = "mars_tofu"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("tofu" = 1, "meat" = 1, "blinding heat" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/plasma_dog
	name = "\improper Plasma Dog"
	desc = "A ballpark hot-dog with sambal, grilled onions and pineapple-lime salsa. You know, the kind of bold flavours they enjoy on Mars."

/obj/item/food/agedashi
	name = "agedashi tofu"
	desc = "Crispy fried tofu, served in a tasty dashi broth. Frequently served at izakayas."
	icon_state = "agedashi"

/obj/item/food/dorayaki_pancakes
	name = "dorayaki pancakes"
	desc = "A simple Japanese dessert consisting of two small pancakes with custard sandwiched inbetween. Often served with a sharp berry coulis to balance the sweetness."

/obj/item/food/blood_cake
	name = "ti hoeh koe skewers"
	desc = "Pig blood, mixed with rice, fried, and topped with peanut and coriander. It's an... acquired taste for sure, but is popular at Prospect's night markets, brough by Taiwanese settlers."

/obj/item/food/soup/new_osaka_sunrise
	name = "\improper New Osaka sunrise soup"
	desc = "A bright, flavourful miso soup with tofu that commonly forms part of a traditional Martian breakfast."
	icon_state = "new_osaka_sunrise"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("miso" = 1, "tofu" = 1)
	foodtypes = VEGETABLES | BREAKFAST
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/fried_noodles
	name = "\improper Martian fried noodles"
	desc = "Fried noodles from the red planet. Martian cooking draws from many cultures, and these noodles are no exception- there's elements of Malay, Thai, Chinese, Korean and Japanese cuisine in here."
	icon_state = "fried_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("noodles" = 1, "peanut" = 1, "eggs" = 1, "meat" = 1, "dark sauce" = 1)
	foodtypes = VEGETABLES | MEAT | GRAIN | NUTS
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cilbir
	name = "cilbir"
	desc = "Eggs, served on a savoury yoghurt base with a spicy oil topping. Originally a Turkish dish, it came to Mars with German-Turkish settlers and has become a breakfast mainstay since."
	icon_state = "cilbir"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("eggs" = 1, "yoghurt" = 1, "chili" = 1)
	foodtypes = MEAT | DAIRY | BREAKFAST
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/peking_crepes
	name = "\improper Peking duck crepes a l'orange"
	desc = "This dish takes the best of Beijing's and Paris' cuisines to make a deliciously tangy and savoury meal."
	icon_state = "peking_crepes"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("duck" = 1, "orange" = 1, "onion" = 1, "chilli" = 1, "crepes" = 1)
	foodtypes = MEAT | VEGETABLES | FRUIT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/pizza/raw_red_city_pizza
	name = "raw Red City pizza"
	desc = "A pizza style common to New Osaka (and particularly the district of Little Brooklyn), Red City pizza has a thick, airy crust, topped off with mozzarella, parmesan, and baked tomato sauce- creating a pizza that is inspired by both the Italian and American traditions, and simultaneously is fully in neither camp. Popular toppings include traditional American options such as pepperoni, traditional Italian toppings such as fresh herbs, and culinary fusion options such as seaweed and kimchi."
	icon_state = "raw_red_city_pizza"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("crust" = 1, "cheese" = 1, "tomato" = 1, "mushrooms" = 1, "seaweed" = 1, "shrimp" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cake/vulgaris_spekkoek
	name = "vulgaris spekkoek"
	desc = "Brought to Mars by both Dutch and Indonesian settlers, spekkoek is a common holiday cake on the Red Planet, often being served as part of a traditional rijsttafel. Use of ambrosia vulgaris as a flavouring is one of necessity in deep space, as pandan leaf is rare this far from Earth."
	icon_state = "vulgaris_spekkoek"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 9, /datum/reagent/consumable/ethanol/manly_dorf = 5)
	tastes = list("cake" = 1, "herbs" = 1, "tomato" = 1, "mushrooms" = 1, "seaweed" = 1, "shrimp" = 1)
	foodtypes = MEAT | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/peanut_butter_mochi
	name = "peanut butter mochi"
	desc = "A classic dessert at the Arabia Street Night Market in Prospect, peanut butter mochi is made with peanut butter as the main filling, and coated in crushed peanuts in the Taiwanese tradition."

/obj/item/food/kasei_dango
	name = "kasei dango"
	desc = "Japanese-style dango balls, flavoured with pomegranate and orange, giving a final result that looks like Mars and tastes like dessert, served three to a stick."

/obj/item/food/scallion_pancake //cong you bing
	name = "scallion pancake"
	desc = "Also known as cong you bing in China, this crispy, chewy onion flatbread is a delight, if you like onions and bread."

/obj/item/food/yam_zongzi
	name = "sweet yam zongzi"
	desc = "A sweet treat from the street markets of Prospect. Made with sweetened yam and sticky rice, for a unique dessert experience."

//Ice Cream and Frozen Treats
/obj/item/food/popsicle/sea_salt
	name = "sea salt ice cream bar"
	desc = "A bright-blue bar of sea salt ice cream. Salty... no, sweet!"
	food_reagents = list(/datum/reagent/consumable/salt = 4, /datum/reagent/consumable/cream = 2, /datum/reagent/consumable/vanilla = 2, /datum/reagent/consumable/sugar = 4)
	foodtypes = DAIRY | SUGAR

/obj/item/food/halo_halo
	name = "halo-halo"
	desc = "A traditional Filipino dessert, made with a wide variety of ingredients and designed to be mixed together (hence the name, mix-mix)."
