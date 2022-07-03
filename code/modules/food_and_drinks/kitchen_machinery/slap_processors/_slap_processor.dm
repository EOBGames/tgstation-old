//A home for machines that process multiple items and reagents into results with no UI
/obj/machinery/slap_processor
	name = "slap processor"
	desc = "Hey, it's Vince, with Slap Processor. You're gonna be in a great mood all day, because you'll be slappin' your troubles away."
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "sauce_boss"
	layer = BELOW_OBJ_LAYER
	density = TRUE
	circuit = /obj/item/circuitboard/machine/slap_processor
	var/broken = FALSE
	var/processing = FALSE
	/// A multiplier to processing speed
	var/rating_speed = 1
	/// A multiplier on the amount of food created: set low as even the lowest level already produces multiple items
	var/rating_amount = 1
	/// A list of all the present contents of the processor- checked against recipes to produce the final item
	var/list/contents

/obj/machinery/slap_processor/Initialize(mapload)
	. = ..()
	if(processor_inputs)
		return
	processor_inputs = list()
	for(var/datum/food_processor_process/recipe as anything in subtypesof(/datum/food_processor_process))
		if(!initial(recipe.input))
			continue
		recipe = new recipe
		var/list/typecache = list()
		var/list/bad_types
		for(var/bad_type in recipe.blacklist)
			LAZYADD(bad_types, typesof(bad_type))
		for(var/input_type in typesof(recipe.input) - bad_types)
			typecache[input_type] = recipe
		for(var/machine_type in typesof(recipe.required_machine))
			LAZYADD(processor_inputs[machine_type], typecache)

/obj/machinery/processor/RefreshParts()
	. = ..()
	for(var/obj/item/stock_parts/matter_bin/B in component_parts)
		rating_amount = B.rating
	for(var/obj/item/stock_parts/manipulator/M in component_parts)
		rating_speed = M.rating
