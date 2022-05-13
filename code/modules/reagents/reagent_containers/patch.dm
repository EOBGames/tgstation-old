/obj/item/reagent_containers/pill/patch
	name = "chemical patch"
	desc = "A chemical patch for touch based applications."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bandaid"
	inhand_icon_state = "bandaid"
	possible_transfer_amounts = list()
	volume = 40
	apply_type = PATCH
	apply_method = "apply"
	self_delay = 30 // three seconds
	dissolvable = FALSE

/obj/item/reagent_containers/pill/patch/attack(mob/living/L, mob/user)
	if(ishuman(L))
		var/obj/item/bodypart/affecting = L.get_bodypart(check_zone(user.zone_selected))
		if(!affecting)
			to_chat(user, span_warning("The limb is missing!"))
			return
		if(!IS_ORGANIC_LIMB(affecting))
			to_chat(user, span_notice("Medicine won't work on a robotic limb!"))
			return
	..()

/obj/item/reagent_containers/pill/patch/canconsume(mob/eater, mob/user)
	if(!iscarbon(eater))
		return FALSE
	return TRUE // Masks were stopping people from "eating" patches. Thanks, inheritance.

/obj/item/reagent_containers/pill/patch/libital
	name = "libital patch (brute)"
	desc = "A pain reliever. Does minor liver damage. Diluted with Granibitaluri."
	list_reagents = list(/datum/reagent/medicine/c2/libital = 2, /datum/reagent/medicine/granibitaluri = 8) //10 iterations
	icon_state = "bandaid_brute"

/obj/item/reagent_containers/pill/patch/aiuri
	name = "aiuri patch (burn)"
	desc = "Helps with burn injuries. Does minor eye damage. Diluted with Granibitaluri."
	list_reagents = list(/datum/reagent/medicine/c2/aiuri = 2, /datum/reagent/medicine/granibitaluri = 8)
	icon_state = "bandaid_burn"

/obj/item/reagent_containers/pill/patch/synthflesh
	name = "synthflesh patch"
	desc = "Helps with brute and burn injuries. Slightly toxic."
	list_reagents = list(/datum/reagent/medicine/c2/synthflesh = 20)
	icon_state = "bandaid_both"

//Name Brand Patches
/obj/item/reagent_containers/pill/patch/miraculin
	name = "\improper Miraculin patch"
	desc = "A medicinal patch produced by the DeForest Medical Corp. Contains adminordrazine as an active ingredient."
	list_reagents = list(/datum/reagent/medicine/adminordrazine = 10)
	icon_state = "bandaid_deforest"

/obj/item/reagent_containers/pill/patch/aqualin
	name = "\improper Aqualin patch"
	desc = "A medicinal patch produced by the DeForest Medical Corp. Contains rezadone as an active ingredient."
	list_reagents = list(/datum/reagent/medicine/rezadone = 10)
	icon_state = "bandaid_deforest"

/obj/item/reagent_containers/pill/patch/pancyclidone
	name = "\improper Pancyclidone patch"
	desc = "A medicinal patch produced by the DeForest Medical Corp. Contains salicylic acid as an active ingredient, diluted with Granibitaluri."
	list_reagents = list(/datum/reagent/medicine/sal_acid = 2, /datum/reagent/medicine/granibitaluri = 8)
	icon_state = "bandaid_deforest"

/obj/item/reagent_containers/pill/patch/junkpurge
	name = "\improper Junkpurge patch"
	desc = "A medicinal patch produced by the DeForest Medical Corp. Contains haloperidol as an active ingredient."
	list_reagents = list(/datum/reagent/medicine/haloperidol = 10)
	icon_state = "bandaid_deforest"

/obj/item/reagent_containers/pill/patch/nicravex
	name = "\improper Nicravex patch"
	desc = "A nicotine patch produced by the DeForest Medical Corp. Beat those cravings!"
	list_reagents = list(/datum/reagent/drug/nicotine = 2, /datum/reagent/medicine/granibitaluri = 8)
	icon_state = "bandaid_deforest"

/obj/item/reagent_containers/pill/patch/activin
	name = "\improper Activin patch"
	desc = "A medicinal patch produced by Interdyne Pharmaceutics. Contains methamphetamine as an active ingredient."
	list_reagents = list(/datum/reagent/drug/methamphetamine = 2, /datum/reagent/medicine/granibitaluri = 8)
	icon_state = "bandaid_interdyne"

/obj/item/reagent_containers/pill/patch/salvium
	name = "\improper Salvium patch"
	desc = "A medicinal patch produced by Interdyne Pharmaceutics. Contains oxandrolone as an active ingredient."
	list_reagents = list(/datum/reagent/medicine/oxandrolone = 2, /datum/reagent/medicine/granibitaluri = 8)
	icon_state = "bandaid_interdyne"
