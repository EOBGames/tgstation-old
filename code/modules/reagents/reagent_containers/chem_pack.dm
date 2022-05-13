/obj/item/reagent_containers/chem_pack
	name = "intravenous medicine bag"
	desc = "A plastic pressure bag, or 'chem pack', for IV administration of drugs. It is fitted with a thermosealing strip."
	icon = 'icons/obj/bloodpack.dmi'
	icon_state = "chempack"
	volume = 100
	reagent_flags = OPENCONTAINER
	spillable = TRUE
	obj_flags = UNIQUE_RENAME
	resistance_flags = ACID_PROOF
	var/sealed = FALSE
	fill_icon_thresholds = list(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
	possible_transfer_amounts = list()

/obj/item/reagent_containers/chem_pack/AltClick(mob/living/user)
	if(user.canUseTopic(src, BE_CLOSE, NO_DEXTERITY) && !sealed)
		if(iscarbon(user) && (HAS_TRAIT(user, TRAIT_CLUMSY) && prob(50)))
			to_chat(user, span_warning("Uh... whoops! You accidentally spill the content of the bag onto yourself."))
			SplashReagents(user)
			return

		reagents.flags = NONE
		reagent_flags = DRAWABLE | INJECTABLE //To allow for sabotage or ghetto use.
		reagents.flags = reagent_flags
		spillable = FALSE
		sealed = TRUE
		to_chat(user, span_notice("You seal the bag."))

/obj/item/reagent_containers/chem_pack/examine()
	. = ..()
	if(sealed)
		. += span_notice("The bag is sealed shut.")
	else
		. += span_notice("Alt-click to seal it.")


/obj/item/reagent_containers/chem_pack/attack_self(mob/user)
	if(sealed)
		return
	..()

//Name Brand Chempacks
/obj/item/reagent_containers/chem_pack/radpurge
	name = "\improper Radpurge IV bag"
	desc = "A drug cocktail produced by Interdyne Pharmaceutics. Rapidly purges radiation, treats genetic damage, and flushes the system."
	list_reagents = list(/datum/reagent/medicine/pen_acid = 50, /datum/reagent/medicine/rezadone = 25, /datum/reagent/medicine/salglu_solution = 25)
	icon_state = "chempack_interdyne"

/obj/item/reagent_containers/chem_pack/allergone
	name = "\improper Allergone IV bag"
	desc = "A drug cocktail produced by the DeForest Medical Corp. Designed to rapidly stabilise patients undergoing severe allergic reactions."
	list_reagents = list(/datum/reagent/medicine/synaphydramine = 50, /datum/reagent/medicine/pen_acid = 25, /datum/reagent/medicine/omnizine = 25)
	icon_state = "chempack_deforest"

/obj/item/reagent_containers/chem_pack/stabilin
	name = "\improper Stabilin IV bag"
	desc = "A drug cocktail produced by the DeForest Medical Corp. Designed to rapidly stabilise patients in critical condition."
	list_reagents = list(/datum/reagent/medicine/atropine = 50, /datum/reagent/medicine/epinephrine = 50)
	icon_state = "chempack_deforest"
