////////////////////////////////////////////SNACKS FROM VENDING MACHINES////////////////////////////////////////////
//in other words: junk food
//don't even bother looking for recipes for these

/obj/item/food/candy
	name = "candy"
	desc = "Nougat love it or hate it."
	icon_state = "candy"
	trash_type = /obj/item/trash/candy
	food_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 3)
	junkiness = 25
	tastes = list("candy" = 1)
	foodtypes = JUNKFOOD | SUGAR
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/candy/bronx
	name = "\improper South Bronx Paradise bar"
	desc = "Lose weight, guaranteed! Caramel Mocha Flavor. Something about product consumption..."
	icon_state = "bronx"
	inhand_icon_state = "candy"
	trash_type = /obj/item/trash/candy
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/sugar = 2, /datum/reagent/yuck = 1)
	junkiness = 10
	bite_consumption = 10
	tastes = list("candy" = 5, "weight loss" = 4, "insect larva" = 1)
	foodtypes = JUNKFOOD | RAW | GROSS
	custom_price = 80
	w_class = WEIGHT_CLASS_TINY
	var/revelation = FALSE

/obj/item/food/candy/bronx/MakeEdible()
	AddComponent(/datum/component/edible,\
				initial_reagents = food_reagents,\
				food_flags = food_flags,\
				foodtypes = foodtypes,\
				volume = max_volume,\
				eat_time = eat_time,\
				tastes = tastes,\
				eatverbs = eatverbs,\
				bite_consumption = bite_consumption,\
				microwaved_type = microwaved_type,\
				junkiness = junkiness,\
				after_eat = CALLBACK(src, .proc/after_eat))

/obj/item/food/candy/bronx/proc/after_eat(mob/living/eater)
	if(ishuman(eater))
		var/mob/living/carbon/human/carl = eater
		var/datum/disease/disease = new /datum/disease/parasite()
		carl.ForceContractDisease(disease, make_copy = FALSE, del_on_fail = TRUE)

/obj/item/food/candy/bronx/examine(mob/user)
	. = ..()
	if(!revelation && !isobserver(user))
		. += span_notice("Geeze, you need to get to get your eyes checked. You should look again...")

		name = "\improper South Bronx Parasite bar"
		desc = "Lose weight, guaranteed! Caramel Mocha Flavor! WARNING: PRODUCT NOT FIT FOR HUMAN CONSUMPTION. CONTAINS LIVE DIAMPHIDIA SPECIMENS."
		revelation = TRUE

/obj/item/food/sosjerky
	name = "\improper Scaredy's Private Reserve Beef Jerky"
	icon_state = "sosjerky"
	desc = "Beef jerky made from the finest space cows."
	trash_type = /obj/item/trash/sosjerky
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 3, /datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/salt = 2)
	junkiness = 25
	tastes = list("dried meat" = 1)
	w_class = WEIGHT_CLASS_SMALL
	foodtypes = JUNKFOOD | MEAT | SUGAR

/obj/item/food/sosjerky/healthy
	name = "homemade beef jerky"
	desc = "Homemade beef jerky made from the finest space cows."
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 6, /datum/reagent/consumable/nutriment/vitamin = 1)
	junkiness = 0

/obj/item/food/chips
	name = "chips"
	desc = "Commander Riker's What-The-Crisps."
	icon_state = "chips"
	trash_type = /obj/item/trash/chips
	bite_consumption = 1
	food_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 3, /datum/reagent/consumable/salt = 1)
	junkiness = 20
	tastes = list("salt" = 1, "crisps" = 1)
	foodtypes = JUNKFOOD | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/chips/MakeLeaveTrash()
	if(trash_type)
		AddElement(/datum/element/food_trash, trash_type, FOOD_TRASH_POPABLE)

/obj/item/food/chips/shrimp
	name = "shrimp chips"
	desc = "Deep-fried, shrimp flavored chips. A favorite junkfood among seafood connoisseurs!"
	icon_state = "shrimp_chips"
	trash_type = /obj/item/trash/shrimp_chips
	food_reagents = list(/datum/reagent/consumable/nutriment/protein = 1, /datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/cooking_oil = 3, /datum/reagent/consumable/salt = 1)
	tastes = list("salt" = 1, "shrimp" = 1)
	foodtypes = JUNKFOOD | FRIED | SEAFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/no_raisin
	name = "\improper 4no raisins"
	icon_state = "4no_raisins"
	desc = "Best raisins in the universe. Not sure why."
	trash_type = /obj/item/trash/raisins
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/sugar = 4)
	junkiness = 25
	tastes = list("dried raisins" = 1)
	foodtypes = JUNKFOOD | FRUIT | SUGAR
	food_flags = FOOD_FINGER_FOOD
	custom_price = PAYCHECK_CREW * 0.7
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/no_raisin/healthy
	name = "homemade raisins"
	desc = "Homemade raisins, the best in all of spess."
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/nutriment/vitamin = 2)
	junkiness = 0
	foodtypes = FRUIT
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/spacetwinkie
	name = "\improper Space Twinkie"
	icon_state = "space_twinkie"
	desc = "Guaranteed to survive longer than you will."
	food_reagents = list(/datum/reagent/consumable/sugar = 4)
	junkiness = 25
	foodtypes = JUNKFOOD | GRAIN | SUGAR
	food_flags = FOOD_FINGER_FOOD
	custom_price = PAYCHECK_LOWER
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/candy_trash
	name = "candy cigarette butt"
	icon = 'icons/obj/clothing/masks.dmi'
	icon_state = "candybum"
	desc = "The leftover from a smoked-out candy cigarette. Can be eaten!"
	food_reagents = list(/datum/reagent/consumable/sugar = 4, /datum/reagent/ash = 3)
	junkiness = 10 //powergame trash food by buying candy cigs in bulk and eating them when they extinguish
	foodtypes = JUNKFOOD | SUGAR
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_TINY

/obj/item/food/candy_trash/nicotine
	desc = "The leftover from a smoked-out candy cigarette. Smells like nicotine..?"
	food_reagents = list(/datum/reagent/consumable/sugar = 4, /datum/reagent/ash = 3, /datum/reagent/drug/nicotine = 1)

/obj/item/food/cheesiehonkers
	name = "\improper Cheesie Honkers"
	desc = "Bite sized cheesie snacks that will honk all over your mouth."
	icon_state = "cheesie_honkers"
	trash_type = /obj/item/trash/cheesie
	food_reagents = list(/datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/sugar = 3)
	junkiness = 25
	tastes = list("cheese" = 5, "crisps" = 2)
	foodtypes = JUNKFOOD | DAIRY | SUGAR
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/syndicake
	name = "\improper Syndi-Cakes"
	icon_state = "syndi_cakes"
	desc = "An extremely moist snack cake that tastes just as good after being nuked."
	trash_type = /obj/item/trash/syndi_cakes
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/doctor_delight = 5)
	tastes = list("sweetness" = 3, "cake" = 1)
	foodtypes = GRAIN | FRUIT | VEGETABLES
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/energybar
	name = "\improper High-power energy bars"
	icon_state = "energybar"
	desc = "An energy bar with a lot of punch, you probably shouldn't eat this if you're not an Ethereal."
	trash_type = /obj/item/trash/energybar
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/liquidelectricity/enriched = 3)
	tastes = list("pure electricity" = 3, "fitness" = 2)
	foodtypes = TOXIC
	food_flags = FOOD_FINGER_FOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/peanuts
	name = "\improper Gallery's peanuts"
	desc = "A favourite amongst the terminally angry."
	icon_state = "peanuts"
	trash_type = /obj/item/trash/peanuts
	food_reagents = list(/datum/reagent/consumable/nutriment = 2)
	tastes = list("peanuts" = 4, "anger" = 1)
	foodtypes = JUNKFOOD | NUTS
	custom_price = PAYCHECK_CREW * 0.8 //nuts are expensive in real life, and this is the best food in the vendor.
	junkiness = 10 //less junky than other options, since peanuts are a decently healthy snack option
	w_class = WEIGHT_CLASS_SMALL
	grind_results = list(/datum/reagent/consumable/peanut_butter = 5, /datum/reagent/consumable/cooking_oil = 2)
	var/safe_for_consumption = TRUE

/obj/item/food/peanuts/salted
	name = "\improper Gallery's salt reserves peanuts"
	desc = "Tastes salty."
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/salt = 1)
	tastes = list("peanuts" = 3, "salt" = 1, "high blood pressure" = 1)

/obj/item/food/peanuts/wasabi
	name = "\improper Gallery's raging wasabi peanuts"
	desc = "The angriest of all peanut flavours."
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/capsaicin = 1)
	tastes = list("peanuts" = 3, "wasabi" = 1, "rage" = 1)

/obj/item/food/peanuts/honey_roasted
	name = "\improper Gallery's delete sweet peanuts"
	desc = "Oddly bitter for a sweet treat."
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/sugar = 1)
	tastes = list("peanuts" = 3, "honey" = 1, "bitterness" = 1)

/obj/item/food/peanuts/barbecue
	name = "\improper Gallery's IDEDBBQ peanuts"
	desc = "Where there's smoke, there's not necessarily fire- sometimes it's just BBQ sauce."
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/bbqsauce = 1)
	tastes = list("peanuts" = 3, "bbq sauce" = 1, "arguments" = 1)

/obj/item/food/peanuts/ban_appeal
	name = "\improper Gallery's peanuts Ban Appel mix"
	desc = "An ill-fated attempt at trail mix, banned in 6 sectors. Yearly lobbying to overturn is denied not because the apples are toxic, but because they keep evading the ban."
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/toxin/cyanide = 1) //uses dried poison apples
	tastes = list("peanuts" = 3, "apples" = 1, "regret" = 1)
	safe_for_consumption = FALSE

/obj/item/food/peanuts/random
	name = "\improper Gallery's every-flavour peanuts"
	desc = "What flavour will you get?"
	icon_state = "peanuts"
	safe_for_consumption = FALSE

GLOBAL_LIST_INIT(safe_peanut_types, populate_safe_peanut_types())

/proc/populate_safe_peanut_types()
	. = list()
	for(var/obj/item/food/peanuts/peanut_type as anything in subtypesof(/obj/item/food/peanuts))
		if(!initial(peanut_type.safe_for_consumption))
			continue
		. += peanut_type

/obj/item/food/peanuts/random/Initialize(mapload)
	// Generate a sample p
	var/peanut_type = pick(GLOB.safe_peanut_types)
	var/obj/item/food/sample = new peanut_type(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/cnds
	name = "\improper C&Ds"
	desc = "Legally, we cannot say that these won't melt in your hands."
	icon_state = "cnds"
	trash_type = /obj/item/trash/cnds
	food_reagents = list(/datum/reagent/consumable/sugar = 3, /datum/reagent/consumable/coco = 1)
	tastes = list("chocolate candy" = 3)
	junkiness = 25
	foodtypes = JUNKFOOD
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cnds/suicide_act(mob/user)
	. = ..()
	user.visible_message(span_suicide("[user] is letting [src] melt in [user.p_their()] hand! It looks like [user.p_theyre()] trying to commit suicide!"))
	return TOXLOSS

/obj/item/food/cnds/caramel
	name = "caramel C&Ds"
	desc = "Stuffed with sugary sweet caramel, making them a diabetic's worst nightmare."
	food_reagents = list(/datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/caramel = 1)
	tastes = list("chocolate candy" = 2, "caramel" = 1)

/obj/item/food/cnds/pretzel
	name = "pretzel C&Ds"
	desc = "Eine köstliche Begleitung zu Ihrem Lieblingsbier."
	food_reagents = list(/datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/nutriment = 1, /datum/reagent/consumable/coco = 1)
	tastes = list("chocolate candy" = 2, "pretzel" = 1)
	foodtypes = JUNKFOOD | GRAIN

/obj/item/food/cnds/peanut_butter
	name = "peanut butter C&Ds"
	desc = "Beloved by small children and aliens alike."
	food_reagents = list(/datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("chocolate candy" = 2, "peanut butter" = 1)

/obj/item/food/cnds/banana_honk
	name = "banana honk C&Ds"
	desc = "The official candy of clowns everywhere. Honk honk!"
	food_reagents = list(/datum/reagent/consumable/sugar = 2, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/banana = 1)
	tastes = list("chocolate candy" = 2, "banana" = 1)

/obj/item/food/cnds/random
	name = "mystery filled C&Ds"
	desc = "Filled with one of four delicious flavours!"

/obj/item/food/cnds/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/cnds) - /obj/item/food/cnds/random)

	var/obj/item/food/sample = new random_flavour(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/pistachios
	name = "\improper Sweetie's Pistachios"
	desc = "A pack of Sweetie's brand premium pistacios."
	icon_state = "pistachio"
	trash_type = /obj/item/trash/pistachios
	food_reagents = list(/datum/reagent/consumable/nutriment = 2, /datum/reagent/consumable/nutriment/vitamin = 1) //a healthy but expensive snack
	tastes = list("pistachios" = 4, "subtle sweetness" = 1)
	foodtypes = JUNKFOOD | NUTS
	custom_price = PAYCHECK_CREW//pistachios are even more expensive.
	junkiness = 10 //on par with peanuts
	w_class = WEIGHT_CLASS_SMALL
	grind_results = list(/datum/reagent/consumable/peanut_butter = 5, /datum/reagent/consumable/cooking_oil = 2)

/obj/item/food/semki
	name = "\improper Semki Sunflower Seeds"
	desc = "A pack of roasted sunflower seeds. Beloved by space russians and babushka alike."
	icon_state = "semki"
	trash_type = /obj/item/trash/semki
	food_reagents = list(/datum/reagent/consumable/cornoil  = 1, /datum/reagent/consumable/salt = 6) //1 cornoil is equal to 1.33 nutriment
	tastes = list("sunflowers" = 5)
	foodtypes = JUNKFOOD | NUTS
	custom_price = PAYCHECK_LOWER * 0.4 //sunflowers are cheap in real life.
	bite_consumption = 1
	junkiness = 25
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/semki/healthy
	name = "roasted sunflower seeds"
	desc = "Homemade roasted sunflower seeds in a paper cup. A healthy and filling snack to nibble as you watch people pass."
	icon_state = "sunseeds"
	food_reagents = list(/datum/reagent/consumable/nutriment = 4, /datum/reagent/consumable/nutriment/vitamin = 2, /datum/reagent/iron = 2)
	junkiness = 5 //Homemade or not, sunflower seets are always kinda junky
	foodtypes = JUNKFOOD | NUTS
	trash_type = /obj/item/trash/semki/healthy

/obj/item/food/cornchips
	name = "\improper Boritos corn chips"
	desc = "Triangular corn chips. They do seem a bit bland but would probably go well with some kind of dipping sauce."
	icon_state = "boritos"
	trash_type = /obj/item/trash/boritos
	bite_consumption = 2
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/cooking_oil = 2, /datum/reagent/consumable/salt = 3)
	junkiness = 20
	custom_price = PAYCHECK_LOWER * 0.8  //we are filled to the brim with flavor
	tastes = list("fried corn" = 1)
	foodtypes = JUNKFOOD | FRIED
	w_class = WEIGHT_CLASS_SMALL

/obj/item/food/cornchips/MakeLeaveTrash()
	AddElement(/datum/element/food_trash, trash_type, FOOD_TRASH_POPABLE)

/obj/item/food/cornchips/blue
	name = "\improper Coolest Ranch Boritos corn chips"
	desc = "Which came first, ranch or cool ranch?"
	icon_state = "boritos"
	trash_type = /obj/item/trash/boritos
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/cooking_oil = 2, /datum/reagent/consumable/salt = 3, /datum/reagent/consumable/yoghurt = 1, /datum/reagent/consumable/garlic = 1)
	tastes = list("fried corn" = 1, "coolest ranch" = 3)

/obj/item/food/cornchips/green
	name = "\improper Spess Salsa Boritos corn chips"
	desc = "It has the salsa baked in, so you don't need dip."
	icon_state = "boritosgreen"
	trash_type = /obj/item/trash/boritos/green
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/cooking_oil = 2, /datum/reagent/consumable/salt = 3, /datum/reagent/consumable/astrotame = 1, /datum/reagent/consumable/blackpepper = 1)
	tastes = list("fried corn" = 1, "spess salsa" = 3)

/obj/item/food/cornchips/red
	name = "\improper Nacho Cheese Boritos corn chips"
	desc = "Notorious for helping cover everything you touch in orange cheese dust."
	icon_state = "boritosred"
	trash_type = /obj/item/trash/boritos/red
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/cooking_oil = 2, /datum/reagent/consumable/salt = 3, /datum/reagent/consumable/astrotame = 1, /datum/reagent/consumable/cornmeal = 1)
	tastes = list("fried corn" = 1, "nacho cheese" = 3)

/obj/item/food/cornchips/purple
	name = "\improper Spicy Sweet Chili Boritos corn chips"
	desc = "The only flavour that actually tastes spicy like proper nachos."
	icon_state = "boritospurple"
	trash_type = /obj/item/trash/boritos/purple
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/cooking_oil = 2, /datum/reagent/consumable/salt = 3, /datum/reagent/consumable/capsaicin = 1, /datum/reagent/consumable/sugar = 1)
	tastes = list("fried corn" = 1, "spicy & sweet chili" = 3)

/obj/item/food/cornchips/random
	name = "\improper Boritos cornchips"
	desc = "Filled with one of four delicious flavours!"

/obj/item/food/cornchips/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/cornchips) - /obj/item/food/cornchips/random)

	var/obj/item/food/sample = new random_flavour(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	icon_state = sample.icon_state
	trash_type = sample.trash_type
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/derby_bar
	name = "\improper Derby"
	desc = "A classic chocolate bar with peanuts, caramel and nougat. Get some nuts!"
	icon_state = "derby_bar"
	trash_type = /obj/item/trash/derby_bar
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("peanuts" = 1, "caramel" = 1, "nougat" = 1, "chocolate" = 1)

/obj/item/food/moonjump_bar
	name = "\improper Moonjump"
	desc = "A classic chocolate bar with caramel and nougat. Make a leap with Moonjump!"
	icon_state = "moonjump_bar"
	trash_type = /obj/item/trash/moonjump_bar
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("caramel" = 1, "nougat" = 1, "chocolate" = 1)

/obj/item/food/twinstix_bar
	name = "\improper Twinstix"
	desc = "A duo of chocolate bars with biscuit and caramel. Do you prefer the left or right one?"
	icon_state = "twinstix_bar"
	trash_type = /obj/item/trash/twinstix_bar
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("caramel" = 1, "biscuit" = 1, "chocolate" = 1)

/obj/item/food/twist_cups
	name = "\improper Twist Peanut Butter Cups"
	desc = "What do you get when you mix peanut butter and chocolate? You get a Twist! Remember, there's no wrong way to eat it!"
	icon_state = "twist_cups"
	trash_type = /obj/item/trash/twist_cups
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("peanut butter" = 1, "chocolate" = 1)

/obj/item/food/reginald_toffeepenny
	name = "\improper Reginald Toffeepenny's Originals"
	desc = "Your grandparent's favourite butterscotch candy. Careful you don't chip a tooth."
	icon_state = "reginald_toffeepenny"
	trash_type = /obj/item/trash/reginald_toffeepenny
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("butterscotch" = 1)

/obj/item/food/rootin_shooters
	name = "\improper Rootin' Shooters hard candy"
	desc = "Individually wrapped hard candy treats, in a variety of Western-inspired flavours."
	icon_state = "rootin_shooters"
	trash_type = /obj/item/trash/rootin_shooters
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("rootbeer" = 1, "sarsaparilla" = 1, "chocolate" = 1, "cola" = 1, "black cherry" = 1, "coffee" = 1, "butterscotch" = 1)

/obj/item/food/little_fruits
	name = "\improper Little Fruits candy- Classic Mix"
	desc = "The world's most famous fruit candy, straight out of Korea- and they're packed with vitamins, too!"
	icon_state = "little_fruits"
	trash_type = /obj/item/trash/little_fruits
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("lychee" = 1, "dragonfruit" = 1, "lime" = 1, "grape" = 1, "melon" = 1, "kiwi" = 1)

/obj/item/food/little_fruits/cinema_mix
	name = "\improper Little Fruits candy- Cinema Mix"
	desc = "One of Little Fruits' most novel mixes, trying to invoke the flavours of the cinema."
	icon_state = "lf_cinema"
	trash_type = /obj/item/trash/little_fruits/cinema_mix
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("buttered popcorn" = 1, "cotton candy" = 1, "salted caramel" = 1, "peanut butter" = 1, "vanilla" = 1, "chocolate" = 1)

/obj/item/food/little_fruits/after_dark_mix
	name = "\improper Little Fruits candy- After Dark Mix"
	desc = "A classic Little Fruits mix, featuring dark fruits."
	icon_state = "lf_after_dark"
	trash_type = /obj/item/trash/little_fruits/after_dark_mix
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("blackberry" = 1, "pomegranate" = 1, "blueberry" = 1, "blackcurrant" = 1, "black cherry" = 1, "raspberry" = 1)

/obj/item/food/little_fruits/shake_n_stirred_mix
	name = "\improper Little Fruits candy- Shake n' Stirred Mix"
	desc = "A new Little Fruits mix, trying to emulate the tastes of the bar."
	icon_state = "lf_shake_n_stirred"
	trash_type = /obj/item/trash/little_fruits/shake_n_stirred_mix
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("pina colada" = 1, "gin and tonic" = 1, "cuba libre" = 1, "mojito" = 1, "caipirinha" = 1, "long island iced tea" = 1)

/obj/item/food/little_fruits/calypso_mix
	name = "\improper Little Fruits candy- Calypso Mix"
	desc = "A classic Little Fruits mix, bringing the tastes of the tropics to your pocket."
	icon_state = "lf_calypso"
	trash_type = /obj/item/trash/little_fruits/calypso_mix
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("pineapple" = 1, "tangerine" = 1, "passionfruit" = 1, "mango" = 1, "banana" = 1, "coconut" = 1)

/obj/item/food/little_fruits/random
	name = "\improper Little Fruits candy- Random Mix"
	desc = "A random Little Fruits flavour mix, obscured with a little cardboard mystery sleeve. What flavours are you getting? Who knows?"

/obj/item/food/little_fruits/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/little_fruits) - /obj/item/food/little_fruits/random)

	var/obj/item/food/sample = new random_flavour(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	icon_state = sample.icon_state
	trash_type = sample.trash_type
	tastes = sample.tastes

	qdel(sample)

	. = ..()

/obj/item/food/microwave_popcorn
	name = "\improper Big Top Pop microwave popcorn"
	desc = "The most popular clown-themed popcorn on the market, beating out Circus Charlie's and Honk-o-Pop for the top spot. Simply microwave and enjoy."
	icon_state = "microwave_popcorn"
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("crunchy corn kernels" = 1)

/obj/item/food/protein_bar
	name = "\improper Star Cuisine protein bar- vanilla flavour"
	desc = "The galaxy's favourite protein bar, packed with protein and vitamins to maintain health and musculature, even in space. This one's vanilla flavoured, for a welcome boost any time of the day."
	icon_state = "protein_bar"
	trash_type = /obj/item/trash/protein_bar
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("vanilla" = 1)

/obj/item/food/protein_bar/korean_beef
	name = "\improper Star Cuisine protein bar- Korean barbecue beef flavour"
	desc = "The galaxy's favourite protein bar, packed with protein and vitamins to maintain health and musculature, even in space. This one's Korean bulgogi beef flavour, and claims to be a great lunch, no matter where you are."
	icon_state = "pb_korean_beef"
	trash_type = /obj/item/trash/protein_bar/korean_beef
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("spicy beef" = 1)

/obj/item/food/protein_bar/coco_orange
	name = "\improper Star Cuisine protein bar- coco-orange flavour"
	desc = "The galaxy's favourite protein bar, packed with protein and vitamins to maintain health and musculature, even in space. This one's coco-orange flavour, giving a bitter yet refreshing taste that suits late-night cravings."
	icon_state = "pb_coco_orange"
	trash_type = /obj/item/trash/protein_bar/coco_orange
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("bitter chocolate" = 1, "sharp orange" = 1)

/obj/item/food/protein_bar/firecracker
	name = "\improper Star Cuisine protein bar- Firecracker flavour"
	desc = "The galaxy's favourite protein bar, packed with protein and vitamins to maintain health and musculature, even in space. This one's Firecracker flavour, a spicy blend of seasonings and deep umami richness to produce a satisfying bar for any time of day."
	icon_state = "pb_firecracker"
	trash_type = /obj/item/trash/protein_bar/firecracker
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("chilli heat" = 1)

/obj/item/food/protein_bar/jerk_roast_chicken
	name = "\improper Star Cuisine protein bar- Jerk roast chicken flavour"
	desc = "The galaxy's favourite protein bar, packed with protein and vitamins to maintain health and musculature, even in space. This one's Jerk roast chicken flavour, bringing a Jamaican twist to any meal."
	icon_state = "pb_jerk_roast_chicken"
	trash_type = /obj/item/trash/protein_bar/jerk_roast_chicken
	food_reagents = list(/datum/reagent/consumable/nutriment = 3, /datum/reagent/consumable/coco = 1, /datum/reagent/consumable/peanut_butter = 1)
	tastes = list("spicy chicken" = 1)

/obj/item/food/protein_bar/random
	name = "\improper Star Cuisine protein bar- random flavour"
	desc = "A random Star Cuisine bar, for when you can't decide what you want for lunch."

/obj/item/food/protein_bar/random/Initialize(mapload)
	var/random_flavour = pick(subtypesof(/obj/item/food/protein_bar) - /obj/item/food/protein_bar/random)

	var/obj/item/food/sample = new random_flavour(loc)

	name = sample.name
	desc = sample.desc
	food_reagents = sample.food_reagents
	icon_state = sample.icon_state
	trash_type = sample.trash_type
	tastes = sample.tastes

	qdel(sample)

	. = ..()
