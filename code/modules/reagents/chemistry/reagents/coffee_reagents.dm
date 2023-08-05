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

/datum/reagent/consumable/coffee/espresso

/datum/reagent/consumable/coffee/ristretto

/datum/reagent/consumable/coffee/engine_slag

/datum/reagent/consumable/coffee/lungo

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
