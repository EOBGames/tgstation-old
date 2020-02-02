// The IT department's trusty drone pet, Glitch!
// Hopefully this doesn't open up a bag of worms, or else it's back to Linus the Penguin. Sad!
/mob/living/simple_animal/pet/petdrone
	name = "Pet Drone"
	desc = "An old NT Maintenance Drone, reprogrammed and repurposed as a pet."
	icon = 'icons/mob/drone.dmi'
	icon_state = "drone_maint_grey"
	icon_living = "drone_maint_grey"
	icon_dead = "drone_maint_dead"
	density = FALSE
	pass_flags = PASSTABLE | PASSMOB
	gender = NEUTER
	mob_biotypes = MOB_ROBOTIC
	speak = list("..|.", ".|...", "...|.|.")
	speak_emote = list("chirps")
	speech_span = SPAN_ROBOT
	bubble_icon = "machine"
	initial_language_holder = /datum/language_holder/drone
	dextrous = TRUE
	dextrous_hud_type = /datum/hud/dextrous/drone
	see_in_dark = 7
	unsuitable_atmos_damage = 0
	emote_hear = list("chirps an upbeat tune.","beeps and boops.")
	emote_see = list("hovers gently in place.", "swoops around happily.")
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "gently pushes away"
	response_disarm_simple = "gently pushes away"
	response_harm_continuous = "swats"
	response_harm_simple = "swat"
	friendly_verb_continuous = "nuzzles"
	friendly_verb_simple = "nuzzle"
	held_items = list(null, null)
	gold_core_spawnable = NO_SPAWN
	
/mob/living/simple_animal/pet/petdrone/glitch
	name = "Glitch"
	desc = "The perfect companion for a stressed IT guy. Brings you coffee, carries parts, and is as dead inside as you are."
	unique_pet = TRUE
