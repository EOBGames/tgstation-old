/datum/quirk/item_quirk/junkie/coffee
	name = "Java Junkie"
	desc = "Smeesh, you hit the coffee a little too hard. You've got a bonafide addiction to it, and going without for too long gives you a bad headache and worse shakes."
	icon = FA_ICON_COFFEE
	value = -1
	gain_text = span_danger("Coffee coffee coffee coffee coffee!")
	lose_text = span_notice("You feel like some tea, or maybe even just some water. Coffee just doesn't feel right anymore.")
	medical_record_text = "Patient has a physiological dependence on coffee due to excessive past consumption."
	reagent_type = /datum/reagent/consumable/coffee
	drug_container_type = /obj/item/reagent_containers/cup/glass/bottle/whiskey
	mob_trait = TRAIT_HEAVY_DRINKER
	hardcore_value = 1
	drug_flavour_text = "Make sure you get your favorite type of drink when you run out."
	mail_goodies = list(
		/obj/effect/spawner/random/food_or_drink/booze,
		/obj/item/book/bible/booze,
	)
	/// Cached typepath of the owner's favorite alcohol reagent
	var/datum/reagent/consumable/ethanol/favorite_alcohol
