//Mars, the Land of the Free

//Ingredients and Simple Dishes
/obj/item/food/kimchi
	name = "kimchi"
	desc = "A classic Korean dish in the Martian style- shredded cabbage with chilli peppers, konbu, bonito, and a mix of spices."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kimchi"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("spicy cabbage" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kamaboko
	name = "kamaboko"
	desc = "A Japanese-style fishcake frequently used in snacks and ramen."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kamaboko"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("fish" = 1)
	foodtypes = SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/sambal
	name = "sambal"
	desc = "A spice paste from Indonesia, used widely in cooking throughout South East Asia."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "sambal"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("chilli heat" = 1, "umami" = 1)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/katsu_fillet
	name = "katsu fillet"
	desc = "Breaded and deep fried meat, used for a variety of dishes."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "katsu_fillet"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("meat" = 1, "breadcrumbs" = 1)
	foodtypes = MEAT | GRAIN
	w_class = WEIGHT_CLASS_SMALL

//Rice Dishes
/obj/item/food/hurricane_rice
	name = "hurricane rice"
	desc = "Inspired by nasi goreng, this classic dish comes straight from Prospect, on Mars, and its night markets. It’s named for its distinctive cooking style, where the frying rice is given lots of airtime while being flipped, mostly because it looks really cool for the customers."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "hurricane_rice"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("rice" = 1, "meat" = 1, "pineapple" = 1)
	foodtypes = MEAT | GRAIN | PINEAPPLE | FRUIT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/ikareis
	name = "ikareis"
	desc = "A spicy rice dish made with squid-ink, peppers, onions, sausage, and flavourful chillis."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ikareis"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("squid ink" = 1, "veggies" = 1, "sausage" = 1, "chilli heat" = 1)
	foodtypes = MEAT | GRAIN | SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

// Main Dishes
/obj/item/food/erdesei_katsu_meal
	name = "erdesei-katsu meal"
	desc = "Breaded and deep fried meat, with a topping of Martian-style Erdeseisauß, a side of spicy fries and a kimchi slaw."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "erdesei_katsu_meal"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("peanut" = 1, "meat" = 1, "breadcrumbs" = 1, "fries" = 1, "kimchi" = 1)
	foodtypes = MEAT | NUTS | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/katsu_curry
	name = "katsu curry"
	desc = "Breaded and deep fried meat, topped with curry sauce and served on a bed of rice."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "katsu_curry"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("curry" = 1, "meat" = 1, "breadcrumbs" = 1, "rice" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/omurroz
	name = "omurroz"
	desc = "An omelette stuffed with spicy fried rice and topped with a spicy tomato salsa."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "omurroz"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("egg" = 1, "spicy rice" = 1, "salsa" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/shoyu_ramen
	name = "shōyu ramen"
	desc = "A soy-sauce based ramen, with noodles, fishcake, barbecued meat and a boiled egg."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "shoyu_ramen"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("egg" = 1, "fish" = 1, "noodles" = 1, "meat" = 1, "broth" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/chileramen_miy_kaezu
	name = "chileramen miy käzu"
	desc = "A spicy beef and onion ramen with cheese- blending several cultural influences seemlessly into one tasty dish."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "shoyu_ramen"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("beef broth" = 1, "onion" = 1, "cheese" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/bulgogi_noodles
	name = "bulgogi noodles"
	desc = "Korean barbecue meat served with noodles! Made with gochujang, for extra spicy flavour."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "bulgogi_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("barbecue meat" = 1, "noodles" = 1, "chilli heat" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/bulgogi_teller
	name = "bulgogi teller"
	desc = "Fried bulgogi beef, topped with garlic-cream sauce, and served alongside spicy fries and a kimchi salad."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "bulgogi_teller"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("barbecue meat" = 1, "fries" = 1, "spicy cabbage" = 1, "garlic" = 1)
	foodtypes = MEAT | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/bibimbap
	name = "bibimbap"
	desc = "A Korean dish consisting of rice and various toppings, served in a hot stone bowl."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "bibimbap"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("rice" = 1, "spicy cabbage" = 1, "chilli heat" = 1, "egg" = 1, "meat" = 1)
	foodtypes = MEAT | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/huoxing_tofu
	name = "\improper Huoxing tofu"
	desc = "An adaptation of mapo tofu made famous in Prospect, the foodie Mecca of Mars. It even kinda looks like Mars, if you really squint."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "huoxing_tofu"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("meat" = 1, "chilli heat" = 1, "tofu" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/soup/new_osaka_sunrise
	name = "\improper New Osaka Sunrise miso soup"
	desc = "A bright, flavourful miso soup with tofu that commonly forms part of a traditional Martian breakfast, at least in the capital."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "new_osaka_sunrise"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("miso" = 1, "tofu" = 1, "onion" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cilbir
	name = "çilbir"
	desc = "Eggs, served on a savoury yoghurt base with a spicy oil topping. Originally a Turkish dish, it came to Mars with German-Turkish settlers and has become a breakfast mainstay since."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "new_osaka_sunrise"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("yoghurt" = 1, "garlic" = 1, "lemon" = 1, "egg" = 1, "chilli heat" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | FRUIT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/peking_duck_crepes
	name = "\improper Peking duck crepes a l'orange"
	desc = "This dish takes the best of Beijing's and Paris' cuisines to make a deliciously tangy and savoury meal."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "peking_duck_crepes"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("meat" = 1, "crepes" = 1, "orange" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | FRUIT
	w_class = WEIGHT_CLASS_SMALL

//Cakes
/obj/item/food/cake/spekkoek
	name = "vulgaris spekkoek"
	desc = "Brought to Mars by both Dutch and Indonesian settlers, spekkoek is a common holiday cake on the Red Planet, often being served as part of a traditional rijsttafel. Use of ambrosia vulgaris as a flavouring is one of necessity in deep space, as pandan leaf is rare this far from Earth."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "spekkoek"
	food_reagents = list(/datum/reagent/consumable/nutriment = 30, /datum/reagent/consumable/nutriment/vitamin = 7)
	tastes = list("winter spices" = 2, "ambrosia vulgaris" = 2, "cake" = 5)
	foodtypes = GRAIN | SUGAR | DAIRY
	burns_in_oven = TRUE

/obj/item/food/cake/spekkoek/MakeProcessable()
	AddElement(/datum/element/processable, TOOL_KNIFE, /obj/item/food/cakeslice/spekkoek, 5, 3 SECONDS, table_required = TRUE)

/obj/item/food/cakeslice/spekkoek
	name = "vulgaris spekkoek slice"
	desc = "A slice of vulgaris spekkoek. If you're Martian, this might remind you of home."
	icon_state = "spekkoek_slice"
	tastes = list("winter spices" = 2, "ambrosia vulgaris" = 2, "cake" = 5)
	foodtypes = GRAIN | SUGAR | DAIRY

// Street Foods/Snacks
/obj/item/food/brat_kimchi
	name = "brat-kimchi"
	desc = "Fried kimchi, mixed with sugar and topped with bratwurst. A popular dish at izakayas on Mars."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "brat_kimchi"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("spicy cabbage" = 1, "sausage" = 1)
	foodtypes = MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/tonkatsuwurst
	name = "tonkatsuwurst"
	desc = "A cultural fusion between German and Japanese cooking, tonkatsuwurst blends the currywurst and tonkatsu sauce into something familiar, yet new."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "tonkatsuwurst"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("sausage" = 1, "spicy sauce" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/izakaya_tempomix
	name = "izakaya tempomix"
	desc = "A popular mix of tempura-fried food, typically served at izakayas across Mars. Items include shrimp, catfish, calamari, tofu, chicken, onions, and mushrooms, although really anything can show up, depending on where you're drinking."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "izakaya_tempomix"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("fish" = 1, "tofu" = 1, "onion" = 1, "mushroom" = 1)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/peanut_butter_mochi
	name = "peanut butter mochi"
	desc = "A classic dessert at the Arabia Street Night Market in Prospect, peanut butter mochi is made with sweetened peanut butter as the main filling, and coated in crushed peanuts in the Taiwanese tradition."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "peanut_butter_mochi"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("peanut butter" = 1, "mochi" = 1)
	foodtypes = NUTS | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/agedashi_tofu
	name = "agedashi tofu"
	desc = "Crispy fried tofu, served in a tasty dashi broth. Frequently served at izakayas."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "agedashi_tofu"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("broth" = 1, "tofu" = 1)
	foodtypes = VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/martian_fried_noodles
	name = "\improper Martian fried noodles"
	desc = "Fried noodles from the red planet. Martian cooking draws from many cultures, and these noodles are no exception- there's elements of Malay, Thai, Chinese, Korean and Japanese cuisine in here."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "martian_fried_noodles"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("noodles" = 1, "meat" = 1, "nuts" = 1, "onion" = 1, "egg" = 1)
	foodtypes = GRAIN | NUTS | MEAT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kebab/ti_hoeh_koe
	name = "ti hoeh koe skewer"
	desc = "Pig blood, mixed with rice, fried, and topped with peanut and coriander. It's an... acquired taste for sure, but is popular at Prospect's night markets, brough by Taiwanese settlers."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ti_hoe_koe"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("blood" = 1, "nuts" = 1, "herbs" = 1)
	foodtypes = MEAT | NUTS | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kebab/kasei_dango
	name = "kasei dango"
	desc = "Japanese-style dango balls, flavoured with pomegranate and orange, giving a final result that looks like Mars and tastes like dessert, served three to a stick."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kasei_dango"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("pomegranate" = 1, "orange" = 1)
	foodtypes = FRUIT | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kitzushi
	name = "kitzushi"
	desc = "A variant on inarizushi popular on Mars amongst vulpinids (and the wider animalid community), kitzushi integrates a spicy cheese and chilli mix inside the pocket for extra flavour."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "kitzushi"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("rice" = 1, "tofu" = 1, "chilli cheese" = 1)
	foodtypes = MEAT | GRAIN | FRIED | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/takoyaki
	name = "takoyaki"
	desc = "A classic Japanese street food, takoyaki (or octopus balls) are made from octopus and onion inside a fried batter, topped with a savoury sauce."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "takoyaki"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("octopus" = 1, "batter" = 1, "onion" = 1, "worcestershire sauce" = 1)
	foodtypes = MEAT | GRAIN | FRIED | VEGETABLES | DAIRY
	w_class = WEIGHT_CLASS_SMALL

// Desserts
/obj/item/food/salad/halo_halo
	name = "halo-halo"
	desc = "A traditional Filipino dessert, made with a wide variety of ingredients and designed to be mixed together (hence the name, mix-mix)."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "halo_halo"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("ube" = 1, "beans" = 1, "coconut" = 1, "banana" = 1)
	foodtypes = VEGETABLES | DAIRY | FRUIT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/salad/pineapple_foster
	name = "pineapple foster"
	desc = "A classic Martian adaptation of another classic dessert, Pineapple Foster is a toasty sweet treat which presents only a mild-to-moderate fire risk."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "halo_halo"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("pineapple" = 1, "vanilla" = 1)
	foodtypes = FRUIT | DAIRY | PINEAPPLE
	w_class = WEIGHT_CLASS_SMALL

// Ballpark Food
/obj/item/food/plasma_dog_supreme
	name = "\improper Plasma Dog Supreme"
	desc = "The signature snack of Cybersun Park, home of the New Osaka Woodpeckers: a ballpark hot-dog with sambal, dashi-grilled onions and pineapple-lime salsa. You know, the sort of bold flavours they enjoy on Mars."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "plasma_dog_supreme"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("sausage" = 1, "relish" = 1, "onion" = 1, "fruity salsa" = 1)
	foodtypes = FRUIT | MEAT | PINEAPPLE | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/frickles
	name = "frickles"
	desc = "Spicy fried pickles? Such a bold combination can surely come only from one place- Martian ballparks? Well, not really, but they are a popular snack there."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "frickles"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("pickles" = 1)
	foodtypes = VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/ballpark_pretzel
	name = "ballpark pretzel"
	desc = "A classic German bread, transformed by the hand of American imperialism into a game-day snack, and then carried to the Red Planet on the backs of Japanese settlers. How multicultural."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ballpark_pretzel"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("bread" = 1, "salt" = 1)
	foodtypes = GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/kebab/ballpark_tsukune
	name = "ballpark tsukune"
	desc = "Skewered chicken meatballs in a sweet-and-savoury yakitori sauce. A common sight at Martian ballparks."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ballpark_pretzel"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("chicken" = 1, "umami sauce" = 1)
	foodtypes = MEAT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/ballpark_fish_fry
	name = "ballpark fish fry"
	desc = "A tasty fried fish dish with spicy mayo from Mars' ballparks. Crispy, tasty, and burning hot."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "ballpark_fish_fry"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("fish" = 1, "fries" = 1, "spicy mayo" = 1)
	foodtypes = SEAFOOD | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

// Sandwiches
/obj/item/food/king_katsu_sandwich
	name = "\improper King Katsu sandwich"
	desc = "A big sandwich with crispy fried katsu, bacon, kimchi slaw and salad, all on reispan bread. Truly the king of meat between bread."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "king_katsu_sandwich"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("meat" = 1, "bacon" = 1, "kimchi" = 1, "salad" = 1, "rice bread" = 1)
	foodtypes = MEAT | GRAIN | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/marte_cubano_sandwich
	name = "\improper Marte Cubano sandwich"
	desc = "A fusion food from Mars, the Marte-Cubano is based on the classic Cubano, but updated for ingredient availability and changes in tastes."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "marte_cubano_sandwich"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("bacon" = 1, "pickles" = 1, "cheese" = 1, "rice bread" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/little_shiro_sandwich
	name = "\improper Little Shiro sandwich"
	desc = "A classic Martian sandwich, named for the first president of TerraGov to come from Mars. It features fried eggs, bulgogi beef, a kimchi salad, and a healthy topping of mozzarella cheese."
	icon = 'icons/obj/food/martian.dmi'
	icon_state = "marte_cubano_sandwich"
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 5, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/blood = 3)
	tastes = list("egg" = 1, "meat" = 1, "kimchi" = 1, "mozzarella" = 1)
	foodtypes = MEAT | DAIRY | VEGETABLES | GRAIN
	w_class = WEIGHT_CLASS_SMALL
