//Water in which fish can be caught
/turf/open/water/fishing/sulphur_spring
	name = "fish-filled water"
	desc = "Freshwater filled with fish. Grab a rod and do some fishing!"

/turf/open/water/fishing/sulphur_spring
	name = "sulphurous water"
	desc = "A deep, murky pool of glowing green water, wearing its sulphurous nature on its sleeve."
	icon = 'icons/turf/floors.dmi'
	icon_state = "riverwater_motion"
	baseturfs = /turf/open/chasm/lavaland
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	planetary_atmos = TRUE

/turf/open/lava/attackby(obj/item/C, mob/user, params)
	..()
	if(istype(C, /obj/item/stack/rods/lava))
		var/obj/item/stack/rods/lava/R = C
		var/obj/structure/lattice/lava/H = locate(/obj/structure/lattice/lava, src)
		if(H)
			to_chat(user, span_warning("There is already a lattice here!"))
			return
		if(R.use(1))
			to_chat(user, span_notice("You construct a lattice."))
			playsound(src, 'sound/weapons/genhit.ogg', 50, TRUE)
			new /obj/structure/lattice/lava(locate(x, y, z))
		else
			to_chat(user, span_warning("You need one rod to build a heatproof lattice."))
		return
