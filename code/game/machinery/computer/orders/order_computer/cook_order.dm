/obj/machinery/computer/order_console/cook
	name = "Produce Orders Console"
	desc = "An interface for ordering direct from Saysons Catering Supply. Offers an (expensive) alternative to the botanists, as well as a number of ingredients that can't be sourced locally." // Everyday's great at your Say-Sons
	circuit = /obj/item/circuitboard/computer/order_console
	order_categories = list(
		CATEGORY_PRODUCE,
		CATEGORY_MEAT,
		CATEGORY_DAIRY_EGGS,
		CATEGORY_SEAFOOD,
		CATEGORY_PANTRY_PRESERVED,
		CATEGORY_DRY_GOODS,
		CATEGORY_SAUCES_CONDIMENTS,
		CATEGORY_SEASONINGS,
		CATEGORY_READY_FOOD,
		CATEGORY_IMPORTED,
		CATEGORY_BULK_PURCHASE,
		CATEGORY_BAR_SUPPLY,
		CATEGORY_KITCHEN_SUPPLY,
	)
	blackbox_key = "chef"

/obj/machinery/computer/order_console/cook/order_groceries(mob/living/purchaser, obj/item/card/id/card, list/groceries)
	say("Thank you for purchasing from SCS! Your order will arrive on the next cargo shuttle!")
	radio.talk_into(src, "The kitchen has ordered groceries which will arrive on the cargo shuttle! Please make sure it gets to them as soon as possible!", radio_channel)
	for(var/datum/orderable_item/ordered_item in groceries)
		if(!(ordered_item.category_index in order_categories))
			groceries.Remove(ordered_item)
			continue
		if(ordered_item in SSshuttle.chef_groceries)
			SSshuttle.chef_groceries[ordered_item] += groceries[ordered_item]
		else
			SSshuttle.chef_groceries[ordered_item] = groceries[ordered_item]
