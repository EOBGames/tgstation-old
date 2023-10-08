/datum/reagent/consumable/coffee
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
	icon_state = "glass_brown"

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

/datum/reagent/consumable/coffee/fresh_brew // comes from coffeemakers
	name = "Fresh-Brewed Coffee"
	description = "Look upon it and weep, for it is the opium of the corporate masses."
	color = "#482000" // rgb: 72, 32, 0
	nutriment_factor = 0
	overdose_threshold = 80
	taste_description = "bitterness"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	glass_price = DRINK_PRICE_STOCK
	quality = DRINK_NICE // a little reward for using the better methods of making coffee

/datum/reagent/consumable/coffee/instant // 4u water, 1u instant coffee, > 353K, cannot be used for coffee recipes- get a real coffeemaker, bro!
	name = "Instant Coffee"
	description = "Look upon it and weep, for it is the bitter opium of the corporate masses."

/datum/reagent/consumable/coffee/cold_brew
	name = "Cold-Brewed Coffee"
	description = "While on the surface cold brew may seem like just another method of making coffee, in actual fact it's very distinct- extracting less harsh flavours than traditional methods, it creates a mellow, smooth drink that's very easy-going."
	quality = DRINK_NICE

/datum/reagent/consumable/coffee/espresso
	name = "Espresso"
	description = "A strong black shot of concentrated coffee, produced at pressure. Done right, it yields a smooth, intense coffee experience."

/datum/reagent/consumable/coffee/ristretto
	name = "Ristretto"
	description = "Made by pulling an espresso shot with half the usual water, a ristretto shot winds up being far more concentrated than the normal espresso experience."

/datum/reagent/consumable/coffee/engine_slag
	name = "Engine Slag"
	description = "A mothic coffee specialty, engine slag pulls an espresso shot with around a quarter of the usual amount of water. Thick, tar-like, and surprisingly mellow, this drink forms one of the main pillars of mothic coffee culture."

/datum/reagent/consumable/coffee/lungo
	name = "Lungo"
	description = "A longer espresso variety pulled with double the usual water quantity, a lungo results in a vastly different coffee experience to a typical espresso due to the higher extraction."

// ESPRESSO DRINKS
/datum/reagent/consumable/coffee/espresso_con_panna // 1u espresso, 1u whipped cream
	name = "Espresso Con Panna"
	description = "An espresso with a kiss of whipped cream floated on top. Helps to temper the bitterness and add some volume."

/datum/reagent/consumable/coffee/espresso_romano // 1u espresso, 1u lemon juice
	name = "Espresso Romano"
	description = "When in Rome, do as the Romans do- add some lemon to your espresso."

// LONG DRINKS
/datum/reagent/consumable/coffee/americano // 1u espresso, 2u water, >353K
	name = "Americano"
	description = "Made by diluting espresso with hot water, the americano was born in the wake of the Second World War in Italy, to cater to the taste (or lack thereof) of the occupying Americans."

/datum/reagent/consumable/coffee/red_eye // 1u espresso, 2u fresh-brewed coffee, >353K
	name = "Red Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/reagent/consumable/coffee/black_eye // 1u espresso, 2u red eye coffee, >353K
	name = "Black Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/reagent/consumable/coffee/dead_eye // 1u espresso, 2u black eye coffee, >353K
	name = "Dead Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/reagent/consumable/coffee/cafe_au_lait // 1u espresso, 1u steamed milk
	name = "Cafe au Lait"
	description = "A classic European coffee, made with equal parts dark coffee (or espresso) and steamed milk. Such a basic combination can, and indeed does, serve as a base for dozens of different drinks."

// CAFE AU LAIT-BASED DRINKS
/datum/reagent/consumable/coffee/mocha // 2u cafe au lait, 1u hot coco
	name = "Mocha"
	description = "Named for the port of Mokha in Yemen, this drink is entirely unlike anything you'll find in the city itself- instead, it's an Italian invention that combines cafe au lait with hot chocolate in a satisfying way."

/datum/reagent/consumable/coffee/maple_white // 3u cafe au lait, 1u maple syrup, 1u vanilla syrup
	name = "Maple White"
	description = "Jim Norton's signature drink, as invented by Jim himself. Combines cafe au lait with maple syrup and french vanilla for a true taste of the frozen north."

/datum/reagent/consumable/coffee/cafe_miel // 3u cafe au lait, 1u honey, 1u cinnamon
	name = "Café Miel"
	description = "Combining the flavours of coffee, milk, honey and cinnamon, the café miel is a warming drink that's easy to sip."

/datum/reagent/consumable/coffee/cappuccino // 2u cafe au lait, 1u frothed milk
	name = "Cappuccino"
	description = "An old Viennese coffee drink, the cappuccino has since went on to become a popular breakfast drink worldwide."

/datum/reagent/consumable/coffee/caffe_latte // 2u cafe au lait, 1u steamed milk
	name = "Caffe Latte"
	description = "A milky coffee beverage that goes great with flavoured syrups."

// FLAVOURED LATTES
// BASIC
/datum/reagent/consumable/coffee/caffe_latte/almond // 4u caffe latte, 1u almond syrup
	name = "Almond Latte"

/datum/reagent/consumable/coffee/caffe_latte/caramel // 4u caffe latte, 1u caramel syrup
	name = "Caramel Latte"

/datum/reagent/consumable/coffee/caffe_latte/cinnamon // 4u caffe latte, 1u cinnamon dolce syrup
	name = "Cinnamon Latte"

/datum/reagent/consumable/coffee/caffe_latte/hazelnut // 4u caffe latte, 1u hazelnut syrup
	name = "Hazelnut Latte"

/datum/reagent/consumable/coffee/caffe_latte/peppermint // 4u caffe latte, 1u mint syrup
	name = "Peppermint Latte"

/datum/reagent/consumable/coffee/caffe_latte/vanilla // 4u caffe latte, 1u vanilla syrup
	name = "Vanilla Latte"
	description = "A classic marriage of vanilla and caffe latte."

// SPECIALTY
/datum/reagent/consumable/coffee/caffe_latte/pumpkin_spice // 4u caffe latte, 1u pumpkin spice syrup
	name = "Pumpkin Spice Latte"
	description = "Tastes a lot like fall. And pumpkin too, I guess."

/datum/reagent/consumable/coffee/caffe_latte/red_bay // 4u caffe latte, 1u red bay syrup
	name = "Red Bay Latte"
	description = "A confusing coffee concoction dreamed up by Mars' craziest baristas. Uses a Red Bay-based syrup to add a taste of the red planet."

/datum/reagent/consumable/coffee/caffe_latte/oliva // 4u caffe latte, 1u olive oil
	name = "Oliva Latte"
	description = "An innovative way to get your daily dose of olive oil and coffee, all at the same time."

/datum/reagent/consumable/icecoffee/ellinikos_frape
	name = "Ellinikós Frapé"
	description = "In contrast to typical frappes, Greek \"frapés\" are made from instant coffee and milk shaken with ice in a shaker. This creates a unique flavour and texture that can't be found elsewhere, and that's why the Greeks love them."

// MISC COFFEES
/datum/reagent/consumable/coffee/ca_phe_trung // 2u espresso, 1u egg yolk, 1u condensed milk
	name = "Cà Phê Trứng"
	description = "Born of Vietnamese coffee traditions, cà phê trứng (or egg coffee) consists of strong coffee topped with a sweetened, beaten egg yolk and condensed milk foam."

// TEA/COFFEE COMBOS
/datum/reagent/consumable/coffee/caffe_latte/dirty_chai //3u chai tea, 2u espresso
	name = "Dirty Chai Latte"

// MISC COFFEE COMBOS
/datum/reagent/consumable/ethanol/cafe_tonic // 1u espresso, 3u tonic water, 1u sugar
	name = "Café Tonic"
	description = "A drink that combines the bitterness of coffee with the additional bitterness of tonic water- making a refreshing taste that's most definitely acquired."

/datum/reagent/consumable/icecoffee/kafka // 1u espresso, 2u space cola
	name = "Kafka"
	description = "An odd combination of strong black espresso, and Space Cola. As weird as it sounds, the taste is unique, and not in a bad way."

/datum/reagent/consumable/icecoffee/adrenalino // 1u espresso, 2u monkey energy
	name = "Adrenalino"
	description = "What happens when you combine espresso and energy drink? The University of Adasta's finest frats bring you the answer via the adrenalino: made with only the finest Monkey Energy, accept no substitutes."

/datum/reagent/consumable/coffee/adrenalino_ethere // 1u espresso, 2u 24-volt energy
	name = "Adrenalino Éthéré"
	description = "A shocking twist on the adrenalino format, this drink swaps the Monkey Energy for 24-Volt instead, making it nominally ethereal-appropriate."

// LIQUEUR COFFEES
/datum/reagent/consumable/ethanol/caffe_corretto // 2u espresso, 1u grappa
	name = "Caffe Corretto"
	description = "So how exactly do you \"correct\" coffee? Well, you add a shot of stiff liquor. The Italians are many things, but subtle is not one of them."

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
	description = "A Swedish/Norwegian beverage of ill-renown, although the concept's hardly unique to Scandinavia- combining coffee and moonshine, it's sure to heat you up on a cold winter's night."

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
	description = "A variation on the Italian Bombardino cocktail, made using Austrian inländer rum. After a few, you'll be shooting about as well as an Austrian artillerist."

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

/datum/reagent/consumable/tea/green
	name = "Green Tea"

/datum/reagent/consumable/tea/oolong
	name = "Oolong Tea"

/datum/reagent/consumable/tea/white
	name = "White Tea"

/datum/reagent/consumable/tea/matcha // 4u water, 1u matcha powder
	name = "Matcha Tea"
	description = "It's green, it's herbal, it's matcha!"

// FLAVOURED TEAS, TISANES AND TEA BLENDS
/datum/reagent/consumable/tea/earl_grey
	name = "Earl Grey Tea"
	description = "A classic British tea infusion made by adding bergamot to Indian black tea. Has a distinct citric kick to distinguish itself from other, more basic teas."

/datum/reagent/consumable/tea/jasmine
	name = "Jasmine Tea"
	description = "A popular Chinese tea infusion, with the addition of jasmine flowers to green tea giving it a subtle aroma and character."

/datum/reagent/consumable/tea/chamomile
	name = "Chamomile Tea"
	description = "A calming tisane made from chamomile. Makes you feel kinda sleepy."

/datum/reagent/consumable/tea/rooibos
	name = "Rooibos"
	description = "A tisane hailing from South Africa, made from the leaves of bushes that grow predominantly around the region."

/datum/reagent/consumable/tea/mate
	name = "Maté"
	description = "A bitter tisane produced from yerba-maté. Popular amongst the Latinoamericano regions of Earth, this classic drink has made its way to the stars alongside spacers and colonists from these areas."

/datum/reagent/consumable/tea/hibiscus
	name = "Hibiscus Tea"

/datum/reagent/consumable/tea/rose
	name = "Rose Tea"

/datum/reagent/consumable/tea/mint
	name = "Mint Tea"

/datum/reagent/consumable/tea/ginger
	name = "Ginger Tea"

/datum/reagent/consumable/tea/weed
	name = "Cannabis Tea"

// EXOTIC TEAS
/datum/reagent/consumable/tea/astra
	name = "Tea Astra"
	description = "A medicinal tea, well known for its blue colour, salty flavour, and invigorating medicinal effect."

//MIXED TEA BEVERAGES
/datum/reagent/consumable/tea/south_china_milk_tea
	name = "South China Milk Tea"

/datum/reagent/consumable/tea/masala_chai
	name = "Masala Chai"
	description = "Also known as \"Chai Tea\" in the west, this Indian creation blends tea, milk, and spices into a single warming concoction."

/datum/reagent/consumable/tea/noon_chai // 3u green tea, 3u milk, 1u salt, 1u sodium hydroxide
	name = "Noon Chai"
	description = "A traditional tea drink from Kashmir, Noon Chai uses green tea cooked with milk, salt and baking soda, turning the tea pink."

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

// MISC HOT DRINKS
/datum/reagent/consumable/hot_malted_milk
	name = "Hot Malted Milk"

/datum/reagent/consumable/aztec_hot_chocolate
	name = "Xocolatl"
	description = "A modern take on Aztec-style hot chocolate, made with vanilla, cinnamon, and chilli."

// ALIEN BASE DRINKS
/datum/reagent/consumable/sulat
	name = "Sulat"
	description = "Tizira's answer to coffee. Closer to a tea than Terran coffee, this sharp, acidic drink is made by steeping dried sulat berries in hot water. Traditionally, sulat is never mixed with milk of any kind."

/datum/reagent/consumable/coffee/mesta
	name = "Mesta"
	description = "A mix of coffee and sulat that's gained popularity in recent years. Combines the bitterness and depth of coffee with the acidic brightness of sulat."

/datum/reagent/consumable/tea/sharzen
	name = "Sharzen"
	description = "A tisane enjoyed widely in the Tiziran Empire, although the Sharzen fern is originally native to Muan- yet another thing the lizards stole from their subjects."

/datum/reagent/consumable/tea/windgrass
	name = "Windgrass Tea"
	description = "A popular herb amongst the moths, windgrass has a strong herbal flavour and mellowing effects."

// SULATTE
/datum/reagent/consumable/sulat/sulatte
	name = "Sulatte"
	description = "A hot drink made from sulat and steamed korta milk. Considered sacrilegious amongst sulat traditionalists on Tizira, it is nonetheless popular with spacers and particularly with humans."

/datum/reagent/consumable/sulat/siokolat
	name = "Siokolat"
	description = "Similar to the Earth mocha, the siokolat is a Tiziran drink that makes use of dark chocolate to accentuate the stonefruit flavours of the sulat."

/datum/reagent/consumable/iced_sulat
	name = "Iced Sulat"
