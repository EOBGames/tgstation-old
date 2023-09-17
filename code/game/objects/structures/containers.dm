/obj/structure/shipping_container
	name = "shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is blank, offering no clue as to its contents."
	icon = 'icons/obj/fluff/containers.dmi'
	icon_state = "container_blank"
	max_integrity = 1000
	bound_width = 96
	bound_height = 32
	density = TRUE
	anchored = TRUE
	layer = ABOVE_ALL_MOB_LAYER
	plane = ABOVE_GAME_PLANE

/obj/structure/shipping_container/Initialize(mapload)
	. = ..()

	AddComponent(/datum/component/seethrough, SEE_THROUGH_MAP_SHIPPING_CONTAINER)

/obj/structure/shipping_container/amsco
	name = "\improper AMSCO shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from AMSCO, also known as Amundsen-Scott Prospecting, and so it most likely contains exploration and surveying gear."
	icon_state = "amsco"

/obj/structure/shipping_container/conarex
	name = "\improper Conarex Aeronautics shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Conarex Aeronautics, and is probably carrying spacecraft parts (or a bribery scandal) as a result."
	icon_state = "conarex"

/obj/structure/shipping_container/deforest
	name = "\improper DeForest Medical Corporation shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from DeForest, and so is probably carrying medical supplies."
	icon_state = "deforest"

/obj/structure/shipping_container/great_northern
	name = "\improper Great Northern shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Great Northern, and so it's probably carrying a tractor or something."
	icon_state = "great_northern"

/obj/structure/shipping_container/kahraman
	name = "\improper Kahraman Heavy Industry shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Kahraman, and is reinforced for carrying ore, which is probably what's inside."
	icon_state = "kahraman"

/obj/structure/shipping_container/kahraman/alt
	icon_state = "kahraman_alt"

/obj/structure/shipping_container/kosmologistika
	name = "\improper Kosmologistika shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Kosmologistika, the logistics company owned and operated by the SSC."
	icon_state = "kosmologistika"

/obj/structure/shipping_container/nakamura
	name = "\improper Nakamura Engineering shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Nakamura, presumably for transporting tools or heavy industrial equipment."
	icon_state = "nakamura"

/obj/structure/shipping_container/nanotrasen
	name = "\improper Nanotrasen shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one prominently features Nanotrasen's logo, and so presumably could be carrying anything."
	icon_state = "nanotrasen"

/obj/structure/shipping_container/ntfid
	name = "\improper Nanotrasen Futures and Innovation Division shipping container"

/obj/structure/shipping_container/nthi
	name = "\improper Nanotrasen Heavy Industries shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from NTHI: Nanotrasen's mining and refining subdivision, so it probably contains ore."
	icon_state = "nthi_common"

/obj/structure/shipping_container/nthi/minor
	icon_state = "nthi_minor"

/obj/structure/shipping_container/nthi/precious
	icon_state = "nthi_precious"

/obj/structure/shipping_container/sunda
	name = "\improper Sunda Galaksi shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Sunda Galaksi, and could be carrying pretty much anything."
	icon_state = "sunda"

/obj/structure/shipping_container/vitezstvi
	name = "\improper Vítězství Arms shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Vítězství Arms, proudly proclaiming that Vítězství weapons mean victory."
	icon_state = "vitezstvi"

//Syndies
/obj/structure/shipping_container/biosustain
	name = "\improper Biosustain shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Biosustain, and is probably carrying genemodded seeds or agrochemicals."
	icon_state = "biosustain"

/obj/structure/shipping_container/cybersun
	name = "\improper Cybersun Industries shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one prominently features Cybersun's logo, and so presumably could be carrying almost anything."
	icon_state = "cybersun"

/obj/structure/shipping_container/donk_co
	name = "\improper Donk Co. shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Donk Co. and so could be carrying just about anything- although it's probably Donk Pockets."
	icon_state = "donk_co"

/obj/structure/shipping_container/gorlex
	name = "\improper Gorlex Securities shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Gorlex Securities, and is probably carrying their primary export: war crimes."
	icon_state = "gorlex"

/obj/structure/shipping_container/gorlex/red
	icon_state = "gorlex_red"

/obj/structure/shipping_container/interdyne
	name = "\improper Interdyne shipping container"
	desc = "A standard-measure shipping container for bulk transport of goods. This one is from Interdyne, a private pharmaceutical company. Probably carrying medical or research supplies, probably."
	icon_state = "interdyne"

// Gas Cisterns
/obj/structure/shipping_container/gas_cistern
	name = "gas cistern"
	desc = "A standard-measure gas cistern for bulk transport of... well, gases. This one is unbranded, and rather dangerously unmarked- what if it's filled with something explosive?"
	icon_state = "gas"

/obj/structure/shipping_container/gas_cistern/apda
	name = "\improper APdA S.p.A. gas cistern"
	desc = "A standard-measure gas cistern for bulk transport of... well, gases. This one is from Associato Petrochimico dell'Adriatico- humanity's largest producer of helium-3 and legacy hydrocarbons, as well as being in the jealous 3rd place for plasma."
	icon_state = "gas_apda"

/obj/structure/shipping_container/gas_cistern/nthi
	name = "\improper NTHI gas cistern"
	desc = "A standard-measure gas cistern for bulk transport of... well, gases. This one is from NTHI, so is probably carrying plasma. I mean, what other gas is NTHI going to be shipping around these parts?"
	icon_state = "gas_nthi_fr"

// Tanks
/obj/structure/shipping_container/liquid_tank
	name = "shipping tank"
	desc = "A standard-measure liquid tank for bulk transport of liquids. This one is unbranded and unmarked."

/obj/structure/shipping_container/liquid_tank/biosustain
	name = "\improper Biosustain shipping tank"
	desc = "A standard-measure liquid tank for bulk transport of liquids. This one is from Biosustain and is almost certainly full of noxious agrochemicals."

/obj/structure/shipping_container/liquid_tank/federalenergetika
	name = "\improper Federalenergetika shipping tank"
	desc = "A standard-measure liquid tank for bulk transport of liquids. This one is from Federalenergetika and is therefore probably filled with heavy water, or maybe nuclear waste knowing their history."
