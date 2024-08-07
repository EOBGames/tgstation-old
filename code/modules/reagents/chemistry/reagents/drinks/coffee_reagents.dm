/datum/reagent/consumable/coffee //BASE TYPE: SHOULDN'T BE USED DIRECTLY
	name = "Coffee"
	description = "Coffee is a brewed drink prepared from roasted seeds, commonly called coffee beans, of the coffee plant."
	color = "#482000" // rgb: 72, 32, 0
	nutriment_factor = 0
	overdose_threshold = 80
	taste_description = "bitterness"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	glass_price = DRINK_PRICE_STOCK

/datum/glass_style/drinking_glass/coffee
	required_drink_type = /datum/reagent/consumable/coffee
	name = "glass of coffee"
	desc = "Don't drop it, or you'll send scalding liquid and glass shards everywhere."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "basic"

/datum/reagent/consumable/coffee/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	affected_mob.set_jitter_if_lower(10 SECONDS * REM * seconds_per_tick)
	..()

/datum/reagent/consumable/coffee/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	affected_mob.adjust_dizzy(-10 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_drowsiness(-6 SECONDS * REM * seconds_per_tick)
	affected_mob.AdjustSleeping(-40 * REM * seconds_per_tick)
	//310.15 is the normal bodytemp.
	affected_mob.adjust_bodytemperature(25 * REM * TEMPERATURE_DAMAGE_COEFFICIENT * seconds_per_tick, 0, affected_mob.get_body_temp_normal())
	if(holder.has_reagent(/datum/reagent/consumable/frostoil))
		holder.remove_reagent(/datum/reagent/consumable/frostoil, 5 * REM * seconds_per_tick)
	..()
	. = TRUE

/datum/reagent/consumable/coffee/iced_coffee //BASE TYPE: SHOULDN'T BE USED DIRECTLY
	name = "Iced Coffee"
	description = "Coffee and ice, refreshing and cool."
	color = "#102838" // rgb: 16, 40, 56
	nutriment_factor = 0
	overdose_threshold = 80
	taste_description = "bitter coldness"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED

/datum/glass_style/drinking_glass/iced_coffee
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee
	name = "glass of iced coffee"
	desc = "A drink to perk you up and refresh you!"
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_basic"

/datum/reagent/consumable/coffee/iced_coffee/overdose_process(mob/living/affected_mob, seconds_per_tick, times_fired)
	affected_mob.set_jitter_if_lower(10 SECONDS * REM * seconds_per_tick)
	..()

/datum/reagent/consumable/coffee/iced_coffee/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	affected_mob.adjust_dizzy(-10 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_drowsiness(-6 SECONDS * REM * seconds_per_tick)
	affected_mob.AdjustSleeping(-40 * REM * seconds_per_tick)
	affected_mob.adjust_bodytemperature(-5 * REM * TEMPERATURE_DAMAGE_COEFFICIENT * seconds_per_tick, affected_mob.get_body_temp_normal())
	affected_mob.set_jitter_if_lower(10 SECONDS * REM * seconds_per_tick)
	..()
	. = TRUE

/datum/reagent/consumable/coffee/fresh_brew // comes from coffeemakers, used for most recipes that call for "basic" coffee
	name = "Fresh-Brewed Coffee"
	description = "Mmm, fresh."
	quality = DRINK_NICE // a little reward for using the better methods of making coffee
	taste_description = "complex bitterness"

/datum/glass_style/drinking_glass/fresh_brew
	required_drink_type = /datum/reagent/consumable/coffee/fresh_brew
	name = "glass of fresh-brewed coffee"
	desc = "Be careful; if you're used to the instant slop, this might just blow your mind."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "basic"

/datum/reagent/consumable/coffee/iced_coffee/fresh_brew
	name = "Iced Fresh-Brewed Coffee"
	description = "A freshly-brewed, refreshing cold drink for those warm summer days."
	quality = DRINK_NICE
	taste_description = "cold complex bitterness"

/datum/glass_style/drinking_glass/iced_fresh_brew
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/fresh_brew
	name = "glass of iced fresh-brewed coffee"
	desc = "Fresh brewed over ice. Apparently a favourite in Manhattan."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_basic"

/datum/reagent/consumable/coffee/instant // 4u water, 1u instant coffee, > 353K, cannot be used for coffee recipes- get a real coffeemaker, bro!
	name = "Instant Coffee"
	description = "Look upon it and weep, for it is the bitter opium of the corporate masses."
	taste_description = "burnt bean water"

/datum/glass_style/drinking_glass/instant_coffee
	required_drink_type = /datum/reagent/consumable/coffee/instant
	name = "glass of instant coffee"
	desc = "I no longer care. I wish only to taste burnt bean water."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "basic"

/datum/reagent/consumable/coffee/iced_coffee/instant
	name = "Iced Instant Coffee"
	description = "Instant coffee, served over ice. All the burnt taste, none of the heat."
	taste_description = "cold burnt bean water"

/datum/glass_style/drinking_glass/iced_instant_coffee
	required_drink_type = /datum/reagent/consumable/coffee/fresh_brew
	name = "glass of iced instant coffee"
	desc = "I uh... you do you, I guess."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_basic"

/datum/reagent/consumable/coffee/iced_coffee/cold_brew // can serve as a substitute for espresso in making drinks, is also very nice on its own
	name = "Cold-Brewed Coffee"
	description = "While on the surface cold brew may seem like just another method of making coffee, in actual fact it's very distinct- extracting less harsh flavours than traditional methods, it creates a mellow, smooth drink that's very easy-going."
	overdose_threshold = 60 // higher caffeine content than hot-brewed coffee
	quality = DRINK_NICE
	taste_description = "easy-going coffee"

/datum/glass_style/drinking_glass/cold_brew_coffee
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/cold_brew
	name = "glass of cold-brewed coffee"
	desc = "Much like Irish whiskey to Scotch, cold-brewed coffee delivers the same energising punch as the hot-brewed stuff with a smoother, friendlier finish."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_basic"

/datum/reagent/consumable/coffee/espresso //the bread and butter of the coffeeshop: used for most pure coffee recipes
	name = "Espresso"
	description = "A strong black shot of concentrated coffee, produced at pressure. Done right, it yields a smooth, intense coffee experience."
	taste_description = "intense bitterness"

/datum/glass_style/drinking_glass/espresso
	required_drink_type = /datum/reagent/consumable/coffee/espresso
	name = "caffe espresso"
	desc = "Hey, mambo, mambo Italiano."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "espresso"

/datum/reagent/consumable/coffee/ristretto
	name = "Ristretto"
	description = "Made by pulling an espresso shot with half the usual water, a ristretto shot winds up being far more concentrated than the normal espresso experience."
	taste_description = "black"

/datum/glass_style/drinking_glass/ristretto
	required_drink_type = /datum/reagent/consumable/coffee/ristretto
	name = "caffe ristretto"
	desc = "Ristretto means \"restricted\", as in you \"restricted\" the flow of water to the shot. It makes for a more concentrated experience all round."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "espresso"

/datum/reagent/consumable/coffee/engine_slag
	name = "Engine Slag"
	description = "A mothic coffee specialty, engine slag pulls an espresso shot with around a quarter of the usual amount of water. Thick, tar-like, and surprisingly mellow, this drink forms one of the main pillars of mothic coffee culture."
	taste_description = "vantablack"

/datum/glass_style/drinking_glass/engine_slag
	required_drink_type = /datum/reagent/consumable/coffee/engine_slag
	name = "glass of engine slag"
	desc = "Get your caffeine allowance for the day in true Mothic style."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "espresso"

/datum/reagent/consumable/coffee/lungo
	name = "Lungo"
	description = "A longer espresso variety pulled with double the usual water quantity, a lungo results in a vastly different coffee experience to a typical espresso due to the higher extraction."
	taste_description = "smooth bitterness"

/datum/glass_style/drinking_glass/lungo
	required_drink_type = /datum/reagent/consumable/coffee/lungo
	name = "caffe lungo"
	desc = "Lungo means \"long\", as in you \"lengthen\" the shot with more water. Somewhere between an espresso and americano, it winds up being a totally different thing to the classic espresso."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "espresso"

// SPECIALTY COFFEES
/datum/reagent/consumable/coffee/chicory
	name = "Chicory Coffee"
	description = "Coffee fortified with roasted chicory root. Popular amongst the French and French-like."
	taste_description = "deep-south bitterness"

/datum/glass_style/drinking_glass/chicory_coffee
	required_drink_type = /datum/reagent/consumable/coffee/chicory
	name = "glass of chicory coffee"
	desc = "Enjoy a cup of coffee the Cajun way- with 60% less coffee per coffee."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "basic"

/datum/reagent/consumable/coffee/iced_coffee/chicory
	name = "Iced Chicory Coffee"
	description = "Chicory coffee, cold. Beat the solar radiation in Cajun style."
	taste_description = "cold deep-south bitterness"

/datum/glass_style/drinking_glass/iced_chicory_coffee
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/chicory
	name = "glass of iced chicory coffee"
	desc = "Now, they usually don't drink it this way down in Louisiana, close to New Orleans. Maybe hide it way back up in the woods among the evergreens."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_basic"

// ESPRESSO DRINKS
/datum/reagent/consumable/coffee/espresso_con_panna // 1u espresso, 1u whipped cream
	name = "Espresso Con Panna"
	description = "An espresso with a kiss of whipped cream floated on top. Helps to temper the bitterness and add some volume."
	taste_description = "tempered bitterness"

/datum/glass_style/drinking_glass/espresso_con_panna
	required_drink_type = /datum/reagent/consumable/coffee/espresso_con_panna
	name = "caffe espresso con panna"
	desc = "For those who want their espresso ever so slightly less bitter."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "espresso_con_panna"

/datum/reagent/consumable/coffee/espresso_romano // 1u espresso, 1u lemon juice
	name = "Espresso Romano"
	description = "When in Rome, do as the Romans do- add some lemon to your espresso."
	taste_description = "sharp bitterness"

/datum/glass_style/drinking_glass/espresso_romano
	required_drink_type = /datum/reagent/consumable/coffee/espresso_romano
	name = "caffe espresso romano"
	desc = "A pairing of coffee and lemon. As the old saying goes, \"When in Rome, do as the Romans do.\"."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "espresso_romano"

// LONG DRINKS
/datum/reagent/consumable/coffee/americano // 1u espresso, 2u water, >353K
	name = "Americano"
	description = "Made by diluting espresso with hot water, the americano was born in the wake of the Second World War in Italy, to cater to the taste (or lack thereof) of the occupying Americans."

/datum/glass_style/drinking_glass/americano
	required_drink_type = /datum/reagent/consumable/coffee/americano
	name = "caffe americano"
	desc = "Born as the Italian answer to classic American-style filter coffee, this winds up being pretty close to a standard cup of Joe, just with a bit more Mediterranean panache."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "americano"

/datum/reagent/consumable/coffee/iced_coffee/americano
	name = "Iced Americano"

/datum/glass_style/drinking_glass/iced_americano
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/americano
	name = "iced caffe americano"
	desc = "You can't really get a more simple quick iced coffee experience, or at least, none that are worth actually drinking."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_americano"

/datum/reagent/consumable/coffee/red_eye // 1u espresso, 2u fresh-brewed coffee, >353K
	name = "Red Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/glass_style/drinking_glass/red_eye
	required_drink_type = /datum/reagent/consumable/coffee/red_eye
	name = "glass of red eye coffee"
	desc = "Perfect for those early mornings."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "americano"

/datum/reagent/consumable/coffee/cafe_au_lait // 1u espresso, 1u milk, >353K
	name = "Cafe au Lait"
	description = "A classic European coffee, made with equal parts espresso and heated milk. Such a basic combination can, and indeed does, serve as a base for dozens of different drinks."

/datum/glass_style/drinking_glass/cafe_au_lait
	required_drink_type = /datum/reagent/consumable/coffee/cafe_au_lait
	name = "cafe au lait"
	desc = "Ooh, it has a foreign name, look at how cultured and *French* we are!"
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "cafe_au_lait"

/datum/reagent/consumable/coffee/iced_coffee/cafe_au_lait
	name = "Iced Cafe au Lait"
	description = "A slightly odd way to drink a cafe-au-lait, this is nonetheless a pleasant summer beverage for a hot European day."

/datum/glass_style/drinking_glass/iced_cafe_au_lait
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/cafe_au_lait
	name = "iced cafe au lait"
	desc = "Perhaps you might call it glacé."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_cafe_au_lait"

// CAFE AU LAIT-BASED DRINKS
/datum/reagent/consumable/coffee/mocha // 2u cafe au lait, 1u hot coco
	name = "Caffe Mocha"
	description = "Named for the port of Mokha in Yemen, this drink is entirely unlike anything you'll find in the city itself- instead, it's an Italian invention that combines cafe au lait with hot chocolate in a satisfying way."

/datum/glass_style/drinking_glass/mocha
	required_drink_type = /datum/reagent/consumable/coffee/mocha
	name = "caffe mocha"
	desc = "A marriage made in heaven between coffee and chocolate."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "mocha"

/datum/reagent/consumable/coffee/iced_coffee/mocha
	name = "Iced Caffe Mocha"

/datum/glass_style/drinking_glass/iced_mocha
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/mocha
	name = "iced caffe mocha"
	desc = "Almost as refreshing as a dip in the Gulf of Aden."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_mocha"

/datum/reagent/consumable/coffee/maple_white // 3u cafe au lait, 1u maple syrup, 1u vanilla syrup
	name = "Maple White"
	description = "Jim Norton's signature drink, as invented by Jim himself. Combines cafe au lait with maple syrup and french vanilla for a true taste of the frozen north."

/datum/glass_style/drinking_glass/maple_white
	required_drink_type = /datum/reagent/consumable/coffee/maple_white
	name = "\improper Maple White"
	desc = "Widely regarded as Jim Norton's signature drink, the Maple White combines a classic cafe-au-lait with maple syrup and french vanilla. It tastes a lot like Canada would, if Canada was edible and not made of rocks and stuff."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "maple_white"

/datum/reagent/consumable/coffee/iced_coffee/maple_white
	name = "Frosted Maple White"

/datum/glass_style/drinking_glass/iced_maple_white
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/maple_white
	name = "frosted Maple White"
	desc = "A drink straight from the frozen north, via a chain coffee shop."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_maple_white"

/datum/reagent/consumable/coffee/donkaccino // 3u hot cocoa, 1u espresso, 1u sprinkles
	name = "Donkaccino"
	description = "The signature drink of Big Donk Donuts. It's basically a hot chocolate with a shot of espresso added, and some sprinkles too."

/datum/glass_style/drinking_glass/donkaccino
	required_drink_type = /datum/reagent/consumable/coffee/donkaccino
	name = "\improper Donkaccino"
	desc = "What's my name? Donkaccino! You may remember this drink from its abysmal product placement in Two's Company, widely regarded as one of the worst cinematic abortions of all time, but don't let that dissuade you: this drink marries hot cocoa and coffee in a way that's similar to, but distinct from, a mocha. Plus, it has sprinkles!"
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "donkaccino"

/datum/reagent/consumable/coffee/iced_coffee/donkaccino
	name = "Frozen Donkaccino"

/datum/glass_style/drinking_glass/iced_donkaccino
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/donkaccino
	name = "frozen Donkaccino"
	desc = "W-w-what's m-my n-name? D-d-donkac-c-cino!"
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_donkaccino"

/datum/reagent/consumable/coffee/twin_shot_caramel // 3u hot cocoa, 1u espresso, 1u sprinkles
	name = "Twin-Shot Caramel"
	description = "Kelpie Cascadia's signature drink, the Twin Shot Caramel. A double espresso cortado with a shot of caramel, for a strong (and drinkable) kick of caffeine in the morning."

/datum/glass_style/drinking_glass/donkaccino
	required_drink_type = /datum/reagent/consumable/coffee/donkaccino
	name = "\improper Donkaccino"
	desc = "What's my name? Donkaccino! You may remember this drink from its abysmal product placement in Two's Company, widely regarded as one of the worst cinematic abortions of all time, but don't let that dissuade you: this drink marries hot cocoa and coffee in a way that's similar to, but distinct from, a mocha. Plus, it has sprinkles!"
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "donkaccino"

/datum/reagent/consumable/coffee/iced_coffee/donkaccino
	name = "Frozen Donkaccino"

/datum/glass_style/drinking_glass/iced_maple_white
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/maple_white
	name = "frozen Donkaccino"
	desc = "W-w-what's m-my n-name? D-d-donkac-c-cino!"
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_donkaccino"

/datum/reagent/consumable/coffee/cafe_miel // 3u cafe au lait, 1u honey, 1u cinnamon
	name = "Café Miel"
	description = "Combining the flavours of coffee, milk, honey and cinnamon, the café miel is a warming drink that's easy to sip."

/datum/glass_style/drinking_glass/cafe_miel
	required_drink_type = /datum/reagent/consumable/coffee/cafe_miel
	name = "café miel"
	desc = "A Spanish delicacy, this drink combines the delicate flavours of honey and cinnamon with the punch of coffee, all wrapped in a velvety milk blanket."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "cafe_miel"

/datum/reagent/consumable/coffee/iced_coffee/cafe_miel
	name = "Iced Café Miel"

/datum/glass_style/drinking_glass/iced_cafe_miel
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/cafe_miel
	name = "iced café miel"
	desc = "A good way to beat the Iberian heat."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_cafe_miel"

/datum/reagent/consumable/coffee/cappuccino // 2u cafe au lait, 1u frothed milk
	name = "Cappuccino"
	description = "An old Viennese coffee drink, the cappuccino has since went on to become a popular breakfast drink worldwide."

/datum/glass_style/drinking_glass/cappuccino
	required_drink_type = /datum/reagent/consumable/coffee/cappuccino
	name = "cappuccino"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "cappuccino"

/datum/reagent/consumable/coffee/iced_coffee/cappuccino
	name = "Iced Cappuccino"

/datum/glass_style/drinking_glass/iced_cappuccino
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/cappuccino
	name = "iced cappuccino"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_cappuccino"

/datum/reagent/consumable/coffee/caffe_latte // 2u cafe au lait, 1u steamed milk
	name = "Caffe Latte"
	description = "A milky coffee beverage that goes great with flavoured syrups."

/datum/glass_style/drinking_glass/caffe_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte
	name = "caffe latte"
	desc = "It's really more milk than coffee. Doesn't stop it tasting great, though."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "caffe_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte
	name = "Iced Caffe Latte"

/datum/glass_style/drinking_glass/iced_caffe_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte
	name = "iced caffe latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_caffe_latte"

// FLAVOURED LATTES
// BASIC
/datum/reagent/consumable/coffee/caffe_latte/almond // 4u caffe latte, 1u almond syrup
	name = "Almond Latte"

/datum/glass_style/drinking_glass/almond_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte/almond
	name = "almond latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "almond_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/almond
	name = "Iced Almond Latte"

/datum/glass_style/drinking_glass/iced_almond_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte/almond
	name = "iced almond latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_almond_latte"

/datum/reagent/consumable/coffee/caffe_latte/caramel // 4u caffe latte, 1u caramel syrup
	name = "Caramel Latte"

/datum/glass_style/drinking_glass/caramel_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte/caramel
	name = "caramel latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "caramel_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/caramel
	name = "Iced Caramel Latte"

/datum/glass_style/drinking_glass/iced_caramel_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte/caramel
	name = "iced caramel latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_caramel_latte"

/datum/reagent/consumable/coffee/caffe_latte/cinnamon // 4u caffe latte, 1u cinnamon syrup
	name = "Cinnamon Latte"

/datum/glass_style/drinking_glass/cinnamon_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte/cinnamon
	name = "cinnamon latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "cinnamon_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/cinnamon
	name = "Iced Cinnamon Latte"

/datum/glass_style/drinking_glass/iced_cinnamon_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte/cinnamon
	name = "iced cinnamon latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_cinnamon_latte"

/datum/reagent/consumable/coffee/caffe_latte/hazelnut // 4u caffe latte, 1u hazelnut syrup
	name = "Hazelnut Latte"

/datum/glass_style/drinking_glass/hazelnut_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte/hazelnut
	name = "hazelnut latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "hazelnut_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/hazelnut
	name = "Iced Hazelnut Latte"

/datum/glass_style/drinking_glass/iced_hazelnut_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte/hazelnut
	name = "iced hazelnut latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_hazelnut_latte"

/datum/reagent/consumable/coffee/caffe_latte/peppermint // 4u caffe latte, 1u peppermint syrup
	name = "Peppermint Latte"

/datum/glass_style/drinking_glass/peppermint_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte/peppermint
	name = "peppermint latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "peppermint_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/peppermint
	name = "Iced Peppermint Latte"

/datum/glass_style/drinking_glass/iced_peppermint_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte/peppermint
	name = "iced peppermint latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_peppermint_latte"

/datum/reagent/consumable/coffee/caffe_latte/vanilla // 4u caffe latte, 1u vanilla syrup
	name = "Vanilla Latte"

/datum/glass_style/drinking_glass/vanilla_latte
	required_drink_type = /datum/reagent/consumable/coffee/caffe_latte/vanilla
	name = "vanilla latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "vanilla_latte"

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/vanilla
	name = "Iced Vanilla Latte"

/datum/glass_style/drinking_glass/iced_vanilla_latte
	required_drink_type = /datum/reagent/consumable/coffee/iced_coffee/caffe_latte/vanilla
	name = "iced vanilla latte"
	desc = "The cappuccino has been the subject of much linguistic debate; while its name might mean \"little hood\" in Italian, the more agreed upon reason for the naming is instead based on its colour, which looks like the robes worn by Capuchin monks."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "iced_vanilla_latte"

// SPECIALTY
/datum/reagent/consumable/coffee/caffe_latte/pumpkin_spice // 4u caffe latte, 1u pumpkin spice syrup
	name = "Pumpkin Spice Latte"
	description = "Tastes a lot like fall. And pumpkin too, I guess."

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/pumpkin_spice
	name = "Iced Pumpkin Spice Latte"

/datum/reagent/consumable/coffee/caffe_latte/red_bay // 4u caffe latte, 1u red bay syrup
	name = "Red Bay Latte"
	description = "A confusing coffee concoction dreamed up by Mars' craziest baristas. Uses a Red Bay-based syrup to add a taste of the red planet."

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/red_bay
	name = "Iced Red Bay Latte"

/datum/reagent/consumable/coffee/caffe_latte/oliva // 4u caffe latte, 1u olive oil
	name = "Oliva Latte"
	description = "An innovative way to get your daily dose of olive oil and coffee, all at the same time."

/datum/reagent/consumable/coffee/iced_coffee/caffe_latte/oliva
	name = "Iced Oliva Latte"
	description = "Perhaps icing an oil-based latte wasn't a great idea."

/datum/reagent/consumable/coffee/iced_coffee/ellinikos_frape
	name = "Ellinikós Frapé"
	description = "In contrast to typical frappes, Greek \"frapés\" are made from instant coffee and milk shaken with ice in a shaker. This creates a unique flavour and texture that can't be found elsewhere, and that's why the Greeks love them."

// MISC COFFEES
/datum/reagent/consumable/coffee/ca_phe_trung // 2u espresso, 1u egg yolk, 1u condensed milk
	name = "Cà Phê Trứng"
	description = "Born of Vietnamese coffee traditions, cà phê trứng (or egg coffee) consists of strong coffee topped with a sweetened, beaten egg yolk and condensed milk foam."

/datum/reagent/consumable/coffee/kopi_joss // 2u espresso, 1u sugar, 1u carbon
	name = "Kopi Joss"
	description = "A unique coffee drink from Yogyakarta, Indonesia, this drink is made by dropping a piece of hot charcoal into a sweetened cup of coffee."

// TEA/COFFEE COMBOS
/datum/reagent/consumable/coffee/caffe_latte/dirty_chai //3u chai tea, 2u espresso
	name = "Dirty Chai Latte"

// MISC COFFEE COMBOS
/datum/reagent/consumable/ethanol/cafe_tonic // 1u espresso, 3u tonic water, 1u sugar
	name = "Café Tonic"
	description = "A drink that combines the bitterness of coffee with the additional bitterness of tonic water- making a refreshing taste that's most definitely acquired."

/datum/reagent/consumable/coffee/iced_coffee/kafka // 1u espresso, 2u space cola
	name = "Kafka"
	description = "An odd combination of strong black espresso, and Space Cola. As weird as it sounds, the taste is unique, and not in a bad way."

/datum/reagent/consumable/coffee/iced_coffee/adrenalino // 1u espresso, 2u monkey energy
	name = "Adrenalino"
	description = "What happens when you combine espresso and energy drink? The University of Adasta's finest frats bring you the answer via the adrenalino: made with only the finest Monkey Energy, accept no substitutes."

/datum/reagent/consumable/coffee/iced_coffee/adrenalino_ethere // 1u espresso, 2u 24-volt energy
	name = "Adrenalino Éthéré"
	description = "A shocking twist on the adrenalino format, this drink swaps the Monkey Energy for 24-Volt instead, making it nominally ethereal-appropriate."

/datum/reagent/consumable/coffee/iced_coffee/bumblebee_coffee // 1u espresso, 1u caramel, 3u orange juice
	name = "Bumblebee Coffee"
	description = "A summery coffee drink that's acidic and refreshing, made with fresh orange juice and caramel syrup."

/datum/reagent/consumable/coffee/iced_coffee/vietnamese // 4u fresh-brew coffee, 1u condensed milk
	name = "Vietnamese Iced Coffee"
	description = "Dark roast coffee, condensed milk, served ice cold. Simple. Elegant. Refreshing."

// LIQUEUR COFFEES
/datum/reagent/consumable/ethanol/caffe_corretto // 2u espresso, 1u grappa
	name = "Caffe Corretto"
	description = "So how exactly do you \"correct\" coffee? Well, you add a shot of stiff liquor, in a classic display of Italian subtlety."

/datum/reagent/consumable/ethanol/carajillo_garciano
	name = "Carajillo Garcíano"
	description = "The concept of the carajillo means many things to many people. Here in the far flung frontiers, however, the version from the colony of San García reigns supreme- coffee, rum, triple sec, coffee liqueur and caramel, all topped off with whipped cream."

/datum/reagent/consumable/ethanol/carajillo_mexicano
	name = "Carajillo Mexicano"
	description = "A more traditional take on the carajillo concept, the Mexican carajillo uses licor milagroso as its liqueur of choice alongside espresso."

/datum/reagent/consumable/ethanol/barraquito
	name = "Barraquito"
	description = "A coffee cocktail endemic to Tenerife, carried further afield by Iberian settlers to the rest of the galaxy- in particular San García, where this drink enjoys almost as much popularity as it has back in the Canaries."

/datum/reagent/consumable/ethanol/karsk
	name = "Karsk"
	description = "A Scandinavian beverage of ill-renown, although the concept's hardly unique to the frozen north- combining coffee and moonshine, it's sure to heat you up on a cold winter's night."

/datum/reagent/consumable/ethanol/ruedesheimer_kaffee
	name = "Rüdesheimer Kaffee"
	description = "Originating in the German town of Rüdesheim am Rhein, this alcoholic coffee drink warms the body and the soul."

/datum/reagent/consumable/ethanol/anzac_gunfire // 4u fresh-brewed coffee, 1u navy rum
	name = "ANZAC Gunfire"
	description = "A classic drink from the British navy, making a gunfire is as simple as adding rum to your tea. Down under, however, they prefer it with coffee."

/datum/reagent/consumable/ethanol/calypso_coffee
	name = "Calypso Coffee"
	description = "For when coffee starts to get attached to work, the Calypso is here to save the day- with rum, kahlua and cream, it'll pull you away to the tropics- at least until you finish the mug, anyway."

/datum/reagent/consumable/ethanol/alpenkaffee
	name = "Alpenkaffee"
	description = "A warming drink straight from the ski slopes of the Eastern Alps."

/datum/reagent/consumable/ethanol/bombenschuetze
	name = "Bombenschütze"
	description = "A variation on the Italian Bombardino cocktail, made using Austrian inländer rum. After a few, you'll be shooting about as well as an Austrian artillerist." // the Austro-Hungarian empire's been real quiet since this dropped

/datum/reagent/consumable/ethanol/advocaatte
	name = "Advocaatte"
	description = "A latte with advocaat. Seriously, who comes up with these names?"

/datum/reagent/consumable/ethanol/saint_nick_latte

// COFFEE COCKTAILS
/datum/reagent/consumable/ethanol/espresso_martini
	name = "Espresso Martini"
	description = "A drink all the way outta the (19)80s, destined to wake you up then fuck you up, in that order."

/datum/reagent/consumable/ethanol/dead_by_dawn
	name = "Dead by Dawn"
	description = "An evolution on the espresso martini formula, this drink marries absinthe, mint, fernet, coffee liqueur, espresso and bitters together in some semblance of harmony. Sip carefully..."

/datum/reagent/consumable/ethanol/engine_fire
	name = "Engine Fire"
	description = "A mothic wake-up-shot of legend, the engine fire combines the mothic coffee favourite engine slag with rum, töchtaüse syrup, and hot sauce. Sharp, acidic and burning-hot spicy, there's nary a moth alive can stay drowsy after one of these."

/datum/reagent/consumable/ethanol/hotshot
	name = "Hotshot"
	description = "Combining coffee, cream, and vanilla liqueur, this Scandi-shot is a tasty way to get your daily recommended dose of caffeine and alcohol."

/datum/reagent/consumable/ethanol/cool_edge
	name = "Cool Edge"
	description = "A sulat-based drink from the breezy shores of Tizira's Minosk, named for the cool edge it imparts on a hot summer day by the beach."

// Tea
// BASE TEAS
/datum/reagent/consumable/tea
	name = "Black Tea"
	description = "Tasty black tea, it has antioxidants, it's good for you!"
	color = "#101000" // rgb: 16, 16, 0
	nutriment_factor = 0
	taste_description = "tart black tea"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	glass_price = DRINK_PRICE_STOCK
	default_container = /obj/item/reagent_containers/cup/glass/mug/tea

/datum/reagent/consumable/tea/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	affected_mob.adjust_dizzy(-4 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_drowsiness(-2 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_jitter(-6 SECONDS * REM * seconds_per_tick)
	affected_mob.AdjustSleeping(-20 * REM * seconds_per_tick)
	if(affected_mob.getToxLoss() && SPT_PROB(10, seconds_per_tick))
		affected_mob.adjustToxLoss(-1, FALSE, required_biotype = affected_biotype)
	affected_mob.adjust_bodytemperature(20 * REM * TEMPERATURE_DAMAGE_COEFFICIENT * seconds_per_tick, 0, affected_mob.get_body_temp_normal())
	..()
	. = TRUE

/datum/reagent/consumable/iced_tea
	name = "Iced Black Tea"
	description = "No relation to a certain rap artist/actor."
	color = "#104038" // rgb: 16, 64, 56
	nutriment_factor = 0
	taste_description = "sweet tea"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED

/datum/reagent/consumable/iced_tea/on_mob_life(mob/living/carbon/affected_mob, seconds_per_tick, times_fired)
	affected_mob.adjust_dizzy(-4 SECONDS * REM * seconds_per_tick)
	affected_mob.adjust_drowsiness(-2 SECONDS * REM * seconds_per_tick)
	affected_mob.AdjustSleeping(-40 * REM * seconds_per_tick)
	if(affected_mob.getToxLoss() && SPT_PROB(10, seconds_per_tick))
		affected_mob.adjustToxLoss(-1, FALSE, required_biotype = affected_biotype)
	affected_mob.adjust_bodytemperature(-5 * REM * TEMPERATURE_DAMAGE_COEFFICIENT * seconds_per_tick, affected_mob.get_body_temp_normal())
	..()
	. = TRUE

/datum/reagent/consumable/tea/green
	name = "Green Tea"
	description = "Despite originating from the same plant as good old black tea, green tea has underwent a different production process- yielding an entirely different world of flavours."

/datum/reagent/consumable/iced_tea/green
	name = "Iced Green Tea"

/datum/reagent/consumable/tea/oolong
	name = "Oolong Tea"
	description = "Falling somewhere between the oxidation levels of black and green tea, oolong tea is a distinct type of tea that's known for its smoky, roasty flavours."

/datum/reagent/consumable/iced_tea/oolong
	name = "Iced Oolong Tea"

/datum/reagent/consumable/tea/white
	name = "White Tea"
	description = "The least processed and oxidised of the tea varieties, white tea has sweeter, lighter notes than black or green tea; despite coming from the same plant."

/datum/reagent/consumable/iced_tea/white
	name = "Iced White Tea"

/datum/reagent/consumable/tea/matcha // 4u water, 1u matcha powder
	name = "Matcha Tea"
	description = "It's green, it's herbal, it's matcha!"

/datum/reagent/consumable/iced_tea/matcha
	name = "Iced Matcha Tea"

// FLAVOURED TEAS, TISANES AND TEA BLENDS
/datum/reagent/consumable/tea/earl_grey
	name = "Earl Grey Tea"
	description = "A classic British tea infusion made by adding bergamot to Indian black tea. Has a distinct citric kick to distinguish itself from other, more basic teas."

/datum/reagent/consumable/iced_tea/earl_grey
	name = "Iced Earl Grey Tea"

/datum/reagent/consumable/tea/jasmine
	name = "Jasmine Tea"
	description = "A popular Chinese tea infusion, with the addition of jasmine flowers to green tea giving it a subtle aroma and character."

/datum/reagent/consumable/iced_tea/jasmine
	name = "Iced Jasmine Tea"

/datum/reagent/consumable/tea/chamomile
	name = "Chamomile Tea"
	description = "A calming tisane made from chamomile. Makes you feel kinda sleepy."

/datum/reagent/consumable/iced_tea/chamomile
	name = "Iced Chamomile Tea"

/datum/reagent/consumable/tea/rooibos
	name = "Rooibos"
	description = "A tisane hailing from South Africa, made from the leaves of redshrub bushes."

/datum/reagent/consumable/iced_tea/rooibos
	name = "Iced Rooibos"

/datum/reagent/consumable/tea/mate
	name = "Maté"
	description = "A bitter tisane produced from yerba-maté. Popular amongst the Latinoamericano regions of Earth, this classic drink has made its way to the stars alongside spacers and colonists from these areas."

/datum/reagent/consumable/iced_tea/mate
	name = "Iced Maté"

/datum/reagent/consumable/tea/hibiscus
	name = "Hibiscus Tea"
	description = "Made from the vibrant red petals of the hibiscus flower, this tisane has a deep, complex and acidic flavour that makes it perfect for use in cold drinks."

/datum/reagent/consumable/iced_tea/hibiscus
	name = "Iced Hibiscus Tea"

/datum/reagent/consumable/tea/rose
	name = "Rose Tea"
	description = "A fragrant infusion made from black tea and rose petals. Lends an air of sophistication to your cuppa."

/datum/reagent/consumable/iced_tea/rose
	name = "Iced Rose Tea"

/datum/reagent/consumable/tea/mint
	name = "Mint Tea"
	description = "Not to be confused with Maghrebi mint tea, this tisane is made by steeping mint leaves in hot water. It's great for fixing a sore throat."

/datum/reagent/consumable/iced_tea/mint
	name = "Iced Mint Tea"

/datum/reagent/consumable/tea/ginger
	name = "Ginger Tea"
	description = "This refreshing tisane is made with... you guessed it, garlic. No, wait, it's ginger. Unsurprisingly, it tastes like hot ginger."

/datum/reagent/consumable/iced_tea/ginger
	name = "Iced Ginger Tea"

/datum/reagent/consumable/tea/weed
	name = "Weed Tea"
	description = "Ride the rainbow with this tokey tisane. It's hemptastic!"

/datum/reagent/consumable/iced_tea/weed
	name = "Iced Weed Tea"

// EXOTIC TEAS
/datum/reagent/consumable/tea/astra
	name = "Tea Astra"
	description = "A medicinal tea, well known for its blue colour, salty flavour, and invigorating medicinal effect."

/datum/reagent/consumable/iced_tea/astra
	name = "Iced Tea Astra"

/datum/reagent/consumable/tea/esanarak
	name = "Es'anarak"
	description = "An algal tea infusion from the Ethereal homeworld, Sprout. Pairs a complex acidity with a clean, crisp finish; oh, and a touch of electricity, of course."

//MIXED TEA BEVERAGES
/datum/reagent/consumable/tea/lemon
	name = "Lemon Tea"
	description = "A refreshing combination of black tea and lemon. Good for sore throats."

/datum/reagent/consumable/tea/south_china_milk_tea
	name = "South China Milk Tea"

/datum/reagent/consumable/tea/masala_chai
	name = "Masala Chai"
	description = "Also known as \"Chai Tea\" in the west, this Indian creation blends black tea, milk, and spices into a single warming concoction."

/datum/reagent/consumable/tea/noon_chai // 3u green tea, 3u milk, 1u salt, 1u sodium hydroxide
	name = "Noon Chai"
	description = "A traditional tea drink from Kashmir, Noon Chai uses green tea cooked with milk, salt and baking soda, which has the odd effect of turning the final tea pink."

/datum/reagent/consumable/tea/maghrebi_mint // 3u green tea, 1u sugar, 1u menthol
	name = "Maghrebi Mint Tea"
	description = "Popular in Morocco and the wider Maghreb, this refreshing drink is made from green tea, spearmint, and sugar, as well as a wide range of optional extras."

/datum/reagent/consumable/tea/chai_latte // 2u chai tea, 2u steamed milk, 1u sugar
	name = "Chai Latte"
	description = "A tea drink inspired by Indian chai, and yet thoroughly unheard of in India itself."

/datum/reagent/consumable/tea/matcha_latte // 2u matcha tea, 2u steamed milk, 1u sugar
	name = "Matcha Latte"
	description = "Made with matcha tea and hot milk. Trendy, yet (kinda) traditional."

/datum/reagent/consumable/tea/teh_talua // 5u black tea, 1u egg yolk, 1u lime juice, 3u condensed milk
	name = "Teh Talua"
	description = "An Indonesian tea drink that combines tea, egg yolk, lime and condensed milk."

/datum/reagent/consumable/tea/london_fog // 3u earl grey tea, 3u steamed milk, 2u vanilla syrup, 2u sugar
	name = "London Fog"
	description = "A tea latte made with earl grey tea and vanilla. Typical to Canadian coffeeshops, it's perhaps no wonder that Jim Norton's does it."

/datum/reagent/consumable/ethanol/john_daly // 3u Arnold Palmer, 2u vodka
	name = "John Daly"
	description = "A boozier take on the Arnold Palmer. Makes you want to commit violence with a golf club."

/datum/reagent/consumable/ethanol/jagertee // 1u black tea, 1u spiced rum, 1u wine, 1u plum wine, 1u orange juice, 373k
	name = "Jagertee"
	description = "An Austrian tea-based hot punch, made with the nation's signature inländer rum. Popular as an après-ski."

// ICED TEA DRINKS
/datum/reagent/consumable/tea/iced/bissap
	name = "Bissap"
	description = "The national drink of Senegal, although it's also enjoyed across most of West Africa. Made from iced hibiscus tea, pineapple juice, and ginger, it's a refreshing beverage in the subsaharan heat."

// MISC HOT DRINKS
/datum/reagent/consumable/hot_malted_milk
	name = "Hot Malted Milk"

/datum/reagent/consumable/aztec_hot_chocolate
	name = "Xocolatl"
	description = "A modern take on Aztec-style hot chocolate, made with vanilla, cinnamon, and chilli."

// ALIEN BASE DRINKS
/datum/reagent/consumable/coffee/sulat
	name = "Sulat"
	description = "Tizira's answer to coffee. Closer to a tea than Terran coffee, this sharp, acidic drink is made by steeping dried sulat berries in hot water. Traditionally, sulat is never mixed with milk of any kind."

/datum/reagent/consumable/coffee/mesta
	name = "Mesta"
	description = "A mix of coffee and sulat that's gained popularity in recent years. Combines the bitterness and depth of coffee with the acidic brightness of sulat."

/datum/reagent/consumable/tea/sharzen
	name = "Sharzen"
	description = "A tisane enjoyed widely in the Tiziran Empire, although the Sharzen fern is originally native to Muan- yet another thing the lizards stole from their subjects."

/datum/reagent/consumable/tea/sparkweed
	name = "Sparkweed Tea"
	description = "A popular herb amongst the moths, sparkweed has a strong herbal flavour and mellowing effects."

// SULATTE
/datum/reagent/consumable/coffee/sulatte
	name = "Sulatte"
	description = "A hot drink made from sulat and steamed korta milk. Considered sacrilegious amongst sulat traditionalists on Tizira, it is nonetheless popular with spacers and particularly with humans."

/datum/reagent/consumable/coffee/siokolat
	name = "Siokolat"
	description = "Similar to the Earth mocha, the siokolat is a Tiziran drink that makes use of dark chocolate to accentuate the stonefruit flavours of the sulat."

/datum/reagent/consumable/coffee/iced_coffee/sulat
	name = "Iced Sulat"

// SHARZEN-BASED DRINKS
/datum/reagent/consumable/tea/iced/sharzen
	name = "Iced Sharzen"
	description = "For those hot Tiziran summer days, iced sharzen is just the tonic to keep on going."

/datum/reagent/consumable/iced_tea/sharzal
	name = "Sharzal"
	description = "A Tiziran soft drink that's made from iced sharzen, honey, and a mix of spices- blends vary, but the main additives are usually chortilla and coastflower extracts."
