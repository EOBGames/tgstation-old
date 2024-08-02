/obj/item/reagent_containers/cup/glass/mug // parent type is literally just so empty mug sprites are a thing
	name = "mug"
	desc = "A drink served in a classy mug."
	icon = 'icons/obj/drinks/coffee.dmi'
	icon_state = "tea_empty"
	base_icon_state = "tea"
	inhand_icon_state = "coffee"
	spillable = TRUE

/obj/item/reagent_containers/cup/glass/mug/update_icon_state()
	icon_state = "[base_icon_state][reagents.total_volume ? null : "_empty"]"
	return ..()

/obj/item/reagent_containers/cup/glass/mug/tea
	name = "Duke Purple tea"
	desc = "An insult to Duke Purple is an insult to the Space Queen! Any proper gentleman will fight you, if you sully this tea."
	icon_state = "tea"
	list_reagents = list(/datum/reagent/consumable/tea = 30)

/obj/item/reagent_containers/cup/glass/mug/coco
	name = "Dutch hot coco"
	desc = "Made in Space South America."
	icon_state = "tea"
	list_reagents = list(/datum/reagent/consumable/hot_coco = 15, /datum/reagent/consumable/sugar = 5)
	drink_type = SUGAR
	resistance_flags = FREEZE_PROOF
	custom_price = PAYCHECK_CREW * 1.2

// PRINTED MUGS - DRINK YOUR COFFEE IN STYLE

/obj/item/reagent_containers/cup/glass/mug/nanotrasen
	name = "\improper Nanotrasen-branded mug"
	desc = "A mug to display your corporate pride."
	icon_state = "mug_nanotrasen"
	base_icon_state = "mug_nt"

/obj/item/reagent_containers/cup/glass/mug/nanotrasen/nthi
	name = "\improper NTHI-branded mug"
	desc = "A mug emblazoned with the logo of NTHI. NTHI: Building a Better Tomorrow."
	icon_state = "mug_nanotrasen"
	base_icon_state = "mug_nt"

/obj/item/reagent_containers/cup/glass/mug/souvenir
	name = "\improper I HEART MANHATTAN mug"
	desc = "A souvenir mug from the Manhattan TID. Show your Terran pride in a tacky, glazed ceramic fashion."
	icon_state = "mug_manhattan"

/obj/item/reagent_containers/cup/glass/mug/

/obj/item/reagent_containers/cup/glass/mug/captain
	name = "\improper Sector's Best Captain mug"
	desc = "A mug that proclaims that the Captain is, in fact, the GOAT. Now, did someone buy this for the captain, or did they buy it for themselves?"
	icon_state = "mug_captain"

/obj/item/reagent_containers/cup/glass/mug/jim_nortons
	name = "\improper Jim Norton's-branded mug"
	desc = ""
	icon_state = "mug_captain"

/obj/item/reagent_containers/cup/glass/mug/cybersun
	name = "\improper Cybersun Industries-branded mug"
	desc = "A mug emblazoned with the logo of Cybersun Industries. Probably best to not let your boss catch you drinking out of this."

// NOVELTY MUGS - HILARITY FOR THE ENTIRE OFFICE

/obj/item/reagent_containers/cup/glass/mug/novelty/security
	name = "novelty security mug"
	desc = "A hilarious(ly insufferable) mug for the security officer in your life. It reads: \"My body is a machine that turns coffee into police brutality.\". Hilarious!"
	icon_state = "mug_security"

/obj/item/reagent_containers/cup/glass/mug/novelty/engineering
	name = "novelty engineering mug"
	desc = "A hilarious(ly insufferable) mug for the station engineer in your life. It reads: \"I'm an Engineer: to save time, let's assume I'm never wrong.\". Hilarious!"
	icon_state = "mug_engineer"

/obj/item/reagent_containers/cup/glass/mug/novelty/cargo
	name = "novelty cargo mug"
	desc = "A hilarious(ly insufferable) mug for the cargo technician in your life. It reads: \"Express delivery: caffeine straight to your mouth!\". Hilarious!"
	icon_state = "mug_cargo"

/obj/item/reagent_containers/cup/glass/mug/novelty/science
	name = "novelty science mug"
	desc = "A hilarious(ly insufferable) mug for the scientist in your life. It reads: \"You matter; unless you get multiplied by the speed of light squared, in which case, you energy.\". Hilarious!"
	icon_state = "mug_science"

/obj/item/reagent_containers/cup/glass/mug/novelty/robotics
	name = "novelty robotics mug"
	desc = "A hilarious(ly insufferable) mug for the roboticist in your life. It reads: \"Playing God? Bitch, please, this is my job!\". Hilarious!"
	icon_state = "mug_robotics"

/obj/item/reagent_containers/cup/glass/mug/novelty/bitrunner
	name = "novelty science mug"
	desc = "A hilarious(ly insufferable) mug for the scientist in your life. It reads: \"I'm not a hacker, I'm a security professional... honest!\". Hilarious!"
	icon_state = "mug_bitrunner"

/obj/item/reagent_containers/cup/glass/mug/novelty/medical
	name = "novelty medic mug"
	desc = "A hilarious(ly insufferable) mug for the doctor in your life. One side reads: \"DO NO HARM IS A SUGGESTION!\", the other \"300CCS OF COFFEE, STAT!\". Hilarious!"
	icon_state = "mug_medical"

/obj/item/reagent_containers/cup/glass/mug/novelty/psychologist
	name = "novelty psychology mug"
	desc = "A hilarious(ly insufferable) mug for the psychologist in your life. It reads: \"EMOTIONAL SUPPORT COFFEE.\". Hilarious!"
	icon_state = "mug_medical"

/obj/item/reagent_containers/cup/glass/mug/novelty/airport
	desc = "A hilarious(ly insufferable) mug to brighten up your day. It reads: \"If assholes could fly, this place would be an airport.\". Hilarious!"
	icon_state = "mug_airport"

// SHAPED MUGS - HARD TO DRINK FROM, HARDER TO CLEAN

/obj/item/reagent_containers/cup/glass/mug/medical
	name = "prescription bottle-shaped mug"
	desc = "Contains the only medicine you'll ever need."
	icon_state = "mug_prescription"

/obj/item/reagent_containers/cup/glass/mug/corgi
	name = "corgi-shaped mug"
	desc = "A mug in the shape of a corgi's adorable head. Sure, it's really hard to clean inside, but who cares about hygiene when your mug is this cute?"
	icon_state = "mug_corgi"

/obj/item/reagent_containers/cup/glass/mug/retro_gamer
	name = "retro gamer mug"
	desc = "An old mug in the shape of vintage game character Phanic the Weasel's stupid spiky head, making it exceptionally difficult to clean.\nYou feel like you saw warnings about the lead content of the paint somewhere."
	icon_state = "mug_retro_gamer"

/obj/item/reagent_containers/cup/glass/mug/skull
	name = "skull-shaped mug"
	desc = "A rad mug for your inner steppe warlord or edgy teenage goth. Maybe both at the same time, even."
	icon_state = "mug_skull"

/obj/item/reagent_containers/cup/glass/mug/beaker
	name = "beaker mug"
	desc = "The perfect glassware for preparing a concentrated solution of CoFFe. Just don't mix it up with the one you use for acids." //god, I don't want to imagine the hell that is CoFFe
	icon_state = "mug_beaker"

/obj/item/reagent_containers/cup/glass/mug/flashbang
	name = "flashbang-shaped mug"
	desc = "The perfect gift for your local rent-a-cop. Perfectly sized to balance a donut on top of, if you're so inclined."
	icon_state = "mug_flashbang"

/obj/item/reagent_containers/cup/glass/mug/red_bay
	name = "\improper Red Bay mug"
	desc = "A mug shaped like a can of Red Bay seasoning. Show your Martian pride!"
	icon_state = "mug_red_bay"

// CULTURAL MUGS - DRINK YOUR COFFEE LIKE AN ALIEN

/obj/item/reagent_containers/cup/glass/mug/tiziran
	name = "\improper Tiziran sulathra"
	desc = "A traditional Tiziran vessel for drinking hot drinks. Consists of a removable glass in an unadorned pewter holder."
	icon_state = "mug_tiziran"
