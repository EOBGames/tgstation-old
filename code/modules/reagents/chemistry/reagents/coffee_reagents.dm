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

/datum/reagent/consumable/coffee/espresso

/datum/reagent/consumable/coffee/ristretto

/datum/reagent/consumable/coffee/engine_slag

/datum/reagent/consumable/coffee/lungo
