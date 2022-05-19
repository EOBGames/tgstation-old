/datum/crafting_recipe/food/sushi_rice
	name = "Sushi rice"
	reqs = list(
		/obj/item/food/salad/boiledrice = 1,
		/datum/reagent/consumable/vinegar = 5
	)
	result = /obj/item/food/salad/sushi_rice
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/tamago
	name = "Tamago omelette"
	reqs = list(
		/obj/item/food/egg = 2,
		/datum/reagent/consumable/sugar = 2,
		/datum/reagent/consumable/soysauce = 2,
		/datum/reagent/consumable/ethanol/sake = 2
	)
	result = /obj/item/food/tamago
	subcategory = CAT_MARTIAN

//Nigirizushi- Sushi for the intermediate chef
/datum/crafting_recipe/food/tamago_nigiri
	name = "Tamago nigirizushi (omelette)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/tamago_slice = 1,
		/obj/item/food/nori_slice = 1
	)
	result = /obj/item/food/sushi/tamago_nigiri
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/ebi_nigiri
	name = "Ebi nigirizushi (shrimp)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/shrimp_slice = 1
	)
	result = /obj/item/food/sushi/ebi_nigiri
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/unagi_nigiri
	name = "Unagi nigirizushi (barbecue eel)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/barbecue_eel = 1,
		/obj/item/food/nori_slice = 1
	)
	result = /obj/item/food/sushi/unagi_nigiri
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/tako_nigiri
	name = "Tako nigirizushi (octopus)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/octopus_slice = 1,
		/obj/item/food/nori_slice = 1
	)
	result = /obj/item/food/sushi/tako_nigiri
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/sake_nigiri
	name = "Sake nigirizushi (salmon)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/salmon_slice = 1
	)
	result = /obj/item/food/sushi/sake_nigiri
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/supesukoi_nigiri
	name = "Supēsukoi nigirizushi (space carp)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/carp_slice = 1
	)
	result = /obj/item/food/sushi/supesukoi_nigiri
	subcategory = CAT_MARTIAN

//Makizushi- Sushi for masochists
/datum/crafting_recipe/food/kappa_maki_roll
	name = "Kappa maki roll (cucumber)"
	reqs = list(
		/obj/item/food/rice_ball = 2,
		/obj/item/food/cucumber_slice = 1,
		/obj/item/food/nori = 1
	)
	result = /obj/item/food/sushi/kappa_maki_roll
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/spicy_salmon_maki_roll
	name = "Spicy salmon maki roll"
	reqs = list(
		/obj/item/food/rice_ball = 2,
		/obj/item/food/salmon_slice = 1,
		/obj/item/food/nori = 1,
		/datum/reagent/consumable/mayonnaise = 5,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/sushi/spicy_salmon_maki_roll
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/california_maki_roll
	name = "California maki roll (crab leg & avocado)"
	reqs = list(
		/obj/item/food/rice_ball = 2,
		/obj/item/food/crab_leg = 1,
		/obj/item/food/cucumber_slice = 1,
		/obj/item/food/avocado_slice = 1,
		/obj/item/food/roe = 1,
		/obj/item/food/nori = 1,
		/datum/reagent/consumable/mayonnaise = 5
	)
	result = /obj/item/food/sushi/california_maki_roll
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/dragon_maki_roll
	name = "Dragon maki roll (shrimp tempura)"
	reqs = list(
		/obj/item/food/rice_ball = 2,
		/obj/item/food/shrimp = 1,
		/obj/item/food/cucumber_slice = 1,
		/obj/item/food/avocado_slice = 1,
		/obj/item/food/nori = 1,
		/datum/reagent/consumable/mayonnaise = 5
	)
	result = /obj/item/food/sushi/dragon_maki_roll
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/spider_maki_roll
	name = "Spider maki roll (spider leg)"
	reqs = list(
		/obj/item/food/rice_ball = 2,
		/obj/item/food/spiderleg = 1,
		/obj/item/food/cucumber_slice = 1,
		/obj/item/food/avocado_slice = 1,
		/obj/item/food/nori = 1,
		/datum/reagent/consumable/mayonnaise = 5,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/sushi/spider_maki_roll
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/samurai_maki_roll
	name = "Samurai maki roll (barbecue eel)"
	reqs = list(
		/obj/item/food/rice_ball = 2,
		/obj/item/food/barbecue_eel = 1,
		/obj/item/food/cucumber_slice = 1,
		/obj/item/food/carrot_slice = 1,
		/obj/item/food/nori = 1,
		/datum/reagent/consumable/ketchup = 2,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/sushi/samurai_maki_roll
	subcategory = CAT_MARTIAN

//Sashimi- "sushi" for the beginner
/datum/crafting_recipe/food/fugu_sashimi
	name = "Fugu sashimi (pufferfish)"
	reqs = list(
		/obj/item/food/fugu_slice = 2
	)
	result = /obj/item/food/sushi/fugu_sashimi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/xeno_sashimi
	name = "Eirian sashimi (xenomorph)"
	reqs = list(
		/obj/item/food/meat/cutlet/xeno = 2
	)
	result = /obj/item/food/sushi/eirian_sashimi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/tako_sashimi
	name = "Tako sashimi (octopus)"
	reqs = list(
		/obj/item/food/octopus_slice = 2
	)
	result = /obj/item/food/sushi/tako_sashimi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/ebi_sashimi
	name = "Ebi sashimi (shrimp)"
	reqs = list(
		/obj/item/food/shrimp_slice = 2
	)
	result = /obj/item/food/sushi/ebi_sashimi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/same_sashimi
	name = "Supēsukoi sashimi (space carp)"
	reqs = list(
		/obj/item/food/carp_slice = 2
	)
	result = /obj/item/food/sushi/supesukoi_sashimi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/sake_sashimi
	name = "Sake sashimi (salmon)"
	reqs = list(
		/obj/item/food/salmon_slice = 2
	)
	result = /obj/item/food/sushi/sake_sashimi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/onigiri
	name = "Onigiri (rice ball)"
	reqs = list(
		/obj/item/food/rice_ball = 1,
		/obj/item/food/nori_slice = 1,
		/obj/item/food/shrimp_slice = 1,
		/datum/reagent/consumable/mayonnaise = 2
	)
	result = /obj/item/food/sushi/onigiri
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/kimchi
	name = "Kimchi (Korean pickled cabbage)"
	reqs = list(
		/obj/item/food/grown/cabbage = 1,
		/obj/item/food/grown/chili = 1,
		/obj/item/food/nori_slice = 1,
		/datum/reagent/consumable/salt = 10,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/sushi/kimchi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/kamaboko_roll
	name = "Kamaboku roll (Japanese fish cake)"
	reqs = list(
		/obj/item/food/fishmeat = 2
	)
	result = /obj/item/food/sushi/kamaboko_roll
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/sambal
	name = "Sambal (Indonesian spicy relish)"
	reqs = list(
		/obj/item/food/shrimp = 1,
		/obj/item/food/grown/chili = 1,
		/obj/item/food/grown/garlic = 1,
		/obj/item/food/grown/onion = 1,
		/datum/reagent/consumable/limejuice = 2
	)
	result = /obj/item/food/sambal
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/katsu
	name = "Katsu fillet"
	reqs = list(
		/obj/item/food/meat/slab = 1,
		/obj/item/food/breadslice = 1
	)
	result = /obj/item/food/katsu_fillet
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/satay_katsu
	name = "Erdesei-katsu meal"
	reqs = list(
		/obj/item/food/katsu_fillet = 1,
		/obj/item/food/kimchi = 1,
		/obj/item/food/fries = 1,
		/datum/reagent/consumable/peanut_butter = 5,
		/datum/reagent/consumable/limejuice = 2,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/satay_katsu
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/katsu_curry
	name = "Katsu curry"
	reqs = list(
		/obj/item/food/katsu_fillet = 1,
		/obj/item/food/salad/boiledrice = 1,
		/datum/reagent/consumable/curry_sauce = 10
	)
	result = /obj/item/food/salad/katsu_curry
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/hurricane_rice
	name = "Hurricane fried rice"
	reqs = list(
		/obj/item/food/salad/boiledrice = 1,
		/obj/item/food/meat/cutlet = 2,
		/obj/item/food/egg = 1,
		/obj/item/food/grown/carrot = 1,
		/obj/item/food/grown/onion = 1,
		/obj/item/food/grown/chili = 1,
		/obj/item/food/grown/pineapple = 1,
		/datum/reagent/consumable/martian_seasoning = 2,
		/datum/reagent/consumable/soysauce = 2
	)
	result = /obj/item/food/salad/hurricane_rice
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/ikareis
	name = "Ikareis (Martian fried rice)"
	reqs = list(
		/obj/item/food/salad/sushi_rice = 1,
		/obj/item/food/sausage = 1,
		/obj/item/food/squid_ink = 1,
		/obj/item/food/grown/bell_pepper = 1,
		/obj/item/food/grown/onion = 1,
		/datum/reagent/consumable/martian_seasoning = 4
	)
	result = /obj/item/food/salad/ikareis
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/omurreis
	name = "Ikareis (Martian fried rice)"
	reqs = list(
		/obj/item/food/salad/ikareis = 1,
		/obj/item/food/grown/tomato = 1,
		/obj/item/food/grown/onion = 1,
		/obj/item/food/egg = 2
	)
	result = /obj/item/food/omurreis
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/shoyu_ramen
	name = "Shōyu ramen"
	reqs = list(
		/obj/item/food/noodles = 1,
		/obj/item/food/kamaboko = 1,
		/obj/item/food/meat/cutlet = 1,
		/obj/item/food/grown/onion = 1,
		/obj/item/food/boiledegg = 1,
		/datum/reagent/consumable/broth = 10,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/food/soup/shoyu_ramen
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/bulgogi_noodles
	name = "Bulgogi noodles"
	reqs = list(
		/obj/item/food/noodles = 1,
		/obj/item/food/meat/cutlet = 2,
		/obj/item/food/grown/onion = 1,
		/obj/item/food/grown/carrot = 1,
		/obj/item/food/egg = 1,
		/obj/item/food/sambal = 1,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/food/salad/bulgogi_noodles
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/bulgogi_teller
	name = "Bulgogi teller"
	reqs = list(
		/obj/item/food/meat/cutlet = 2,
		/obj/item/food/kimchi = 1,
		/obj/item/food/fries = 1,
		/obj/item/food/grown/garlic = 1,
		/datum/reagent/consumable/martian_seasoning = 2,
		/datum/reagent/consumable/cream = 4
	)
	result = /obj/item/food/bulgogi_teller
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/frankramen_miy_kaezu
	name = "Frankramen miy kaezu"
	reqs = list(
		/obj/item/food/noodles = 1,
		/obj/item/food/meat/cutlet = 2,
		/obj/item/food/grown/onion = 2,
		/obj/item/food/cheese = 1,
		/datum/reagent/consumable/broth = 10,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/food/soup/frankramen_miy_kaezu
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/brat_kimchi
	name = "Brat-kimchi"
	reqs = list(
		/obj/item/food/sausage = 1,
		/obj/item/food/kimchi = 1,
		/datum/reagent/consumable/sugar = 2
	)
	result = /obj/item/food/brat_kimchi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/tonkatsuwurst
	name = "Brat-kimchi"
	reqs = list(
		/obj/item/food/sausage = 1,
		/obj/item/food/fries = 1,
		/datum/reagent/consumable/ketchup = 5,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/tonkatsuwurst
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/izakaya_tempomix
	name = "Izakaya tempomix"
	reqs = list(
		/obj/item/food/onion_slice = 1,
		/obj/item/food/fishmeat = 1,
		/obj/item/food/meat/rawcutlet = 1,
		/obj/item/food/tofu = 1,
		/obj/item/food/grown/mushroom = 1,
		/datum/reagent/consumable/flour = 5,
		/datum/reagent/water = 5
	)
	result = /obj/item/food/izakaya_tempomix
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/mars_tofu
	name = "Huoxing tofu"
	reqs = list(
		/obj/item/food/tofu = 1,
		/obj/item/food/meatball = 1,
		/obj/item/food/grown/onion = 1,
		/obj/item/food/grown/chili = 1,
		/obj/item/food/grown/soybeans = 1
	)
	result = /obj/item/food/salad/mars_tofu
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/plasma_dog
	name = "Plasma Dog Supreme"
	reqs = list(
		/obj/item/food/bun = 1,
		/obj/item/food/sausage = 1,
		/obj/item/food/sambal = 1,
		/obj/item/food/onion_slice = 2,
		/obj/item/food/pineappleslice = 1,
		/datum/reagent/consumable/limejuice = 2
	)
	result = /obj/item/food/plasma_dog
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/frickles
	name = "Frickles (fried pickles)"
	reqs = list(
		/obj/item/food/pickle = 2,
		/datum/reagent/consumable/flour = 5,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/frickles
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/ballpark_pretzel
	name = "Ballpark pretzel"
	reqs = list(
		/obj/item/food/doughslice = 1,
		/datum/reagent/consumable/salt = 2
	)
	result = /obj/item/food/ballpark_pretzel
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/ballpark_tsukune
	name = "Ballpark tsukune"
	reqs = list(
		/obj/item/food/meatball/chicken = 2,
		/datum/reagent/consumable/soysauce = 2,
		/datum/reagent/consumable/sugar = 1,
		/obj/item/stack/rods = 1
	)
	result = /obj/item/food/kebab/ballpark_tsukune
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/squid_fries
	name = "Squid fries"
	reqs = list(
		/obj/item/food/calamari = 1,
		/obj/item/food/fries = 1,
		/datum/reagent/consumable/mayonnaise = 3,
		/datum/reagent/consumable/martian_seasoning = 2
	)
	result = /obj/item/food/squid_fries
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/agedashi
	name = "Agedashi tofu"
	reqs = list(
		/obj/item/food/tofu = 1,
		/datum/reagent/consumable/broth = 10,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/food/soup/agedashi
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/dorayaki
	name = "Dorayaki pancakes"
	reqs = list(
		/obj/item/food/pancakes = 2,
		/obj/item/food/egg = 1,
		/obj/item/food/grown/berries = 1,
		/datum/reagent/consumable/milk = 2,
		/datum/reagent/consumable/sugar = 4
	)
	result = /obj/item/food/dorayaki_pancakes
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/blood_cake
	name = "Ti hoeh koe skewer (Pig's blood cake)"
	reqs = list(
		/obj/item/food/peanuts = 1,
		/obj/item/food/grown/herbs = 1,
		/datum/reagent/consumable/rice = 5,
		/datum/reagent/blood = 5,
		/obj/item/stack/rods = 1
	)
	result = /obj/item/food/kebab/blood_cake
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/new_osaka_sunrise
	name = "New Osaka sunrise miso soup"
	reqs = list(
		/obj/item/food/tofu = 1,
		/obj/item/food/miso_paste = 1,
		/datum/reagent/consumable/broth = 10,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/food/soup/new_osaka_sunrise
	subcategory = CAT_MARTIAN

/datum/crafting_recipe/food/new_osaka_sunrise
	name = "New Osaka sunrise miso soup"
	reqs = list(
		/obj/item/food/tofu = 1,
		/obj/item/food/miso_paste = 1,
		/datum/reagent/consumable/broth = 10,
		/obj/item/reagent_containers/glass/bowl = 1
	)
	result = /obj/item/food/soup/new_osaka_sunrise
	subcategory = CAT_MARTIAN
