//now you can finally stop leaving cigar butts everywhere you dirty fucks
/obj/item/ashtray
	name = "ashtray"
	desc = "Snuff out your cigarette... in style!"
	icon = 'icons/obj/objects.dmi'
	icon_state = "ashtray"
	resistance_flags = FIRE_PROOF
	var/ashvolume = 0 //how much ash is in the ashtray... obviously.
	var/maxash = 50 //the maximum volume of the ashtray

/obj/item/ashtray/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/clothing/mask/cigarette))
		if(ashvolume > maxash - 5)
			to_chat(user, "<span class='warning'>The [src] is full!</span>")
			return
		to_chat(user, "<span class='notice'>You snuff out the [I] in the ashtray.")
		ashvolume += 5
		qdel(I)
		return
	else if(istype(I, /obj/item/cigbutt))
		if(ashvolume > maxash - 2)
			to_chat(user, "<span class='warning'>The [src] is full!")
			return
		to_chat(user, "<span class='notice'>You put [I] in the ashtray.")
		ashvolume += 2
		qdel(I)
		return
	to_chat(user, "<span class='warning'>You can't snuff that out!")
	return

/obj/item/ashtray/bluespace
	name = "bluespace ashtray"
	desc = "This bad boy sends all of your ash to a specially constructed ashtray dimension. Out of sight, out of mind, am I right?"
	icon_state = "blueashtray"
	maxash = null //no need for it, this just dumps the ash *somewhere* in the universe. It really is out of sight, out of mind.

/obj/item/ashtray/bluespace/attackby(obj/item/I, mob/living/user, params)
	if(istype(I, /obj/item/clothing/mask/cigarette))
		to_chat(user, "<span class='notice'>You snuff out [I] in the ashtray and watch as it and the ash vanishes into the portal.")
		qdel(I)
		return
	else if(istype(I, /obj/item/cigbutt))
		to_chat(user, "<span class='notice'>You put [I] in the ashtray and watch as it and the ash vanishes into the portal.")
		qdel(I)
		return
	to_chat(user, "<span class='warning'>You can't put that in the ashtray!")
	return
