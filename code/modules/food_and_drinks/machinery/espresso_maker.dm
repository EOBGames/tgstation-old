// The Espressomaker- while it shares a lot of functionality with the coffeemaker in terms of cartridges, the actual operation is vastly different

/obj/machinery/espressomaker
	name = "espressomaker"
	desc = "A Fabbrica Modello 7 Espressomaker that makes espresso and steamed milk. A series of dials and switches allow changing the amount of water and pressure pushed through the grounds to make a series of different types of espresso. Takes industrial \"S-N-E-S\" model cartridges. Made by Piccionaia Home Appliances."
	icon = 'icons/obj/medical/chemical.dmi'
	icon_state = "espressomaker_nocup_nomilk_nocart"
	base_icon_state = "espressomaker"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	circuit = /obj/item/circuitboard/machine/espressomaker
	var/obj/item/reagent_containers/beaker = null
	var/obj/item/reagent_containers/cup/steamer_jug = null
	var/brewing = FALSE
	var/brew_time = 20 SECONDS
	var/speed = 1
	/// The setting for water use. Determines the type of espresso being made: 1 = Engine Slag, 2 = Ristretto, 3 = Espresso, 4 = Lungo, 3 is default
	var/water_setting = 3
	/// The coffee cartridge to make coffee from. This model only takes S-N-E-S model cartridges, so no accepted_cartridge_type is necessary.
	var/obj/item/coffee_cartridge/espresso/cartridge = null
	/// The type path to instantiate for the coffee cartridge the device initially comes with, eg. /obj/item/coffee_cartridge
	var/initial_cartridge = /obj/item/coffee_cartridge/espresso

	var/static/radial_examine = image(icon = 'icons/hud/radial.dmi', icon_state = "radial_examine")
	var/static/radial_brew = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_brew")
	var/static/radial_eject_pot = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_eject_pot")
	var/static/radial_eject_cartridge = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_eject_cartridge")
	var/static/radial_take_cup = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_cup")
	var/static/radial_take_sugar = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_sugar")
	var/static/radial_take_sweetener = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_sweetener")
	var/static/radial_take_creamer = image(icon = 'icons/hud/radial_coffee.dmi', icon_state = "radial_take_creamer")

// Espresso cartridges. All use the S-N-E-S model, making them incompatible with other models.
/obj/item/espresso_cartridge
	name = "espressomaker cartridge - Coffee"
	desc = "An \"S-N-E-S\" model espressomaker cartridge manufactured by Piccionaia Coffee, for use with the Fabbrica 7 system. This is loaded with coffee grounds, to make basic espresso."
	icon_state = "cartridge_espresso_basic"
	var/charges = 20 //Industrial size for industrial applications
	/// Drink type: determines the type of drink being made
	var/drink_type = "coffee"

/obj/item/espresso_cartridge/mesta
	name = "espressomaker cartridge - Mesta"
	desc = "An \"S-N-E-S\" model espressomaker cartridge manufactured by Piccionaia Coffee, for use with the Fabbrica 7 system. This is loaded with a mesta blend, to make mesta espresso."
