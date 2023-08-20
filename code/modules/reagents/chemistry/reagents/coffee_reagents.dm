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

/datum/reagent/consumable/coffee/fresh_brew
	name = "Fresh-Brewed Coffee"
	description = "Look upon it and weep, for it is the opium of the corporate masses."
	color = "#482000" // rgb: 72, 32, 0
	nutriment_factor = 0
	overdose_threshold = 80
	taste_description = "bitterness"
	chemical_flags = REAGENT_CAN_BE_SYNTHESIZED
	glass_price = DRINK_PRICE_STOCK

/datum/reagent/consumable/coffee/cold_brew
	name = "Cold-Brewed Coffee"
	description = "While on the surface cold brew may seem like just another method of making coffee, in actual fact it's very distinct- extracting less harsh flavours than traditional methods, it creates a mellow, smooth drink that's very easy-going."

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

// Espresso Drinks
/datum/reagent/consumable/coffee/espresso_con_panna
	name = "Espresso Con Panna"
	description = "An espresso with a kiss of whipped cream floated on top. Helps to temper the bitterness and add some volume."

/datum/reagent/consumable/coffee/espresso_macchiato
	name = "Espresso Macchiato"
	description = "Meaning marked in Italian, a macchiato is an espresso 'marked' with a dash of steamed milk."

/datum/reagent/consumable/coffee/americano
	name = "Americano"
	description = "Made by diluting espresso with hot water, the americano was born in the wake of the Second World War in Italy, to cater to the taste (or lack thereof) of the occupying Americans."

/datum/reagent/consumable/coffee/red_eye
	name = "Red Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/reagent/consumable/coffee/black_eye
	name = "Black Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/reagent/consumable/coffee/dead_eye
	name = "Dead Eye Coffee"
	description = "For when neither filter coffee nor espresso is quite enough solo, the Red Eye combines them. Stay up in style."

/datum/reagent/consumable/coffee/cappuccino
	name = "Cappuccino"
	description = "An old Viennese coffee drink, the cappuccino has since went on to become a popular breakfast drink worldwide."

/datum/reagent/consumable/coffee/caffe_latte
	name = "Caffe Latte"
	description = "A milky coffee beverage that straddles the line of even being classifiable as a coffee-based drink. Still tasty, though."

/datum/reagent/consumable/coffee/mesta
	name = "Mesta"
	description = "A mix of coffee and sulat that's gained popularity in recent years. Combines the bitterness and depth of coffee with the acidic brightness of sulat."

/datum/reagent/consumable/sulat
	name = "Sulat"
	description = "Tizira's answer to coffee. Closer to a tea than Terran coffee, this sharp, acidic drink is made by steeping dried sulat berries in hot water. Traditionally, sulat is never mixed with milk of any kind."

/datum/reagent/consumable/sulatte
	name = "Sulatte"
	description = "A hot drink made from sulat and steamed korta milk. Considered sacrilegious amongst sulat traditionalists on Tizira, it is nonetheless popular with spacers and particularly with humans."

/datum/reagent/consumable/coffee/cafe_miel
	name = "Café Miel"
	description = "Combining the flavours of coffee, milk, honey and cinnamon, the Café Miel is a warming drink that's easy to sip."

/datum/reagent/consumable/coffee/maple_white
	name = "Maple White"
	description = "Jim Norton's signature drink, as invented by Jim himself. Combines white coffee with maple syrup and french vanilla for a true taste of the frozen north."

/datum/reagent/consumable/coffee/espresso_romano
	name = "Espresso Romano"
	description = "When in Rome, do as the Romans do- add some lemon to your espresso."

/datum/reagent/consumable/coffee/ca_phe_trung
	name = "Cà Phê Trứng"
	description = "Born of Vietnamese coffee traditions, cà phê trứng (or egg coffee) consists of strong coffee topped with a sweetened, beaten egg yolk and condensed milk foam."

/datum/reagent/consumable/icecoffee/ellinikos_frape
	name = "Ellinikós Frapé"
	description = "In contrast to typical frappes, Greek \"frapés\" are made from instant coffee and milk shaken with ice in a shaker. This creates a unique flavour and texture that can't be found elsewhere, and that's why the Greeks love them."

/datum/reagent/consumable/coffee/kafka //3:1 space cola : espresso
	name = "Kafka"
	description = "An odd combination of strong black espresso, and Space Cola. As weird as it sounds, the taste is unique, and not in a bad way."

/datum/reagent/consumable/coffee/adrenalino //3:1 monkey energy : espresso
	name = "Adrenalino"
	description = "What happens when you combine espresso and energy drink? The University of Adasta's finest frats bring you the answer via the adrenalino: made with only the finest Monkey Energy, accept no substitutes."

/datum/reagent/consumable/coffee/adrenalino_ethere //3:1 24-volt energy : espresso
	name = "Adrenalino Éthéré"
	description = "A shocking twist on the adrenalino format, this drink swaps the Monkey Energy for 24-Volt instead, making it nominally ethereal-appropriate."

/datum/reagent/consumable/ethanol/caffe_corretto
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

/datum/reagent/consumable/ethanol/espresso_martini
	name = "Espresso Martini"
	description = "A drink all the way outta the (19)80s, destined to wake you up then fuck you up, in that order."

/datum/reagent/consumable/ethanol/karsk
	name = "Karsk"
	description = "A Swedish/Norwegian beverage of ill-renown, although the concept's hardly unique to Scandinavia- combining coffee and moonshine, it's sure to heat you up on a cold winter's night."

/datum/reagent/consumable/ethanol/ruedesheimer_kaffee
	name = "Rüdesheimer Kaffee"
	description = "Originating in the German town of Rüdesheim am Rhein, this alcoholic coffee drink warms the body and the soul."

/datum/reagent/consumable/ethanol/coffee_gunfire
	name = "Coffee Gunfire"
	description = "A classic drink from the British navy, making a gunfire is as simple as adding rum to your tea. Down under, however, they prefer it with coffee."

/datum/reagent/consumable/ethanol/cafe_tonic
	name = "Café Tonic"
	description = "A drink that combines the bitterness of coffee with the additional bitterness of tonic water- making a refreshing taste that's most definitely acquired."

/datum/reagent/consumable/ethanol/dead_by_dawn
	name = "Dead by Dawn"
	description = "An evolution on the espresso martini formula, this drink marries absinthe, mint, fernet, coffee liqueur, espresso and bitters together in some semblance of harmony. Sip carefully..."

/datum/reagent/consumable/ethanol/engine_fire
	name = "Engine Fire"
	description = "A mothic wake-up-shot of legend, the engine fire combines the mothic coffee favourite engine slag with rum, töchtaüse syrup, and hot sauce. Sharp, acidic and burning-hot spicy, there's nary a moth alive can stay drowsy after one of these."

/datum/reagent/consumable/ethanol/cool_edge
	name = "Cool Edge"
	description = "A sulat-based drink from the breezy shores of Tizira's Minosk, named for the cool edge it imparts on a hot summer day by the beach."

// Tea
/datum/reagent/consumable/tea
	name = "Tea"
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

/datum/reagent/consumable/tea/matcha
	name = "Matcha Tea"
	description = "It's green, it's herbal, it's matcha!"

/datum/reagent/consumable/tea/astra
	name = "Tea Astra"
	description = "A medicinal tea originally found on Idyllus. Well known for its blue colour, salty flavour, and invigorating medicinal effect."

/datum/reagent/consumable/tea/windgrass
	name = "Windgrass Tea"
	description = "A popular herb amongst the moths, windgrass has a strong herbal flavour and mellowing effects."

/datum/reagent/consumable/tea/matcha_latte
	name = "Matcha Latte"
	description = "Made with matcha tea and hot milk."

/datum/reagent/consumable/tea/teh_talua
	name = "Teh Talua"
	description = "An Indonesian tea drink that combines tea, egg yolk, lime and condensed milk."

/datum/reagent/consumable/tea/london_fog
	name = "London Fog"
	description = "A tea latte made with Earl Grey and vanilla. Typical to Canadian coffeeshops, it's perhaps no wonder that Jim Norton's does it."

/datum/reagent/consumable/ethanol/john_daly
	name = "John Daly"
	description = "A boozier take on the Arnold Palmer. Makes you want to commit violence with a golf club."
