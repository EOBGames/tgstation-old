/* ARTIFACTS
Artifacts are larger scale archaeology loot, typically with a discrete purpose.
Each is made up of multiple parts (the more powerful the item, the more parts!) which must be assembled
*/

// Steam Censer - Space/Lavaland Loot: A Clockwork Cult-styled smoke machine. "Converts" water placed into it into a special healing chem.
// Steam Censer Induction Coil - A high quality induction coil, inlaid with flowing script, and designed to heat a corresponding piece.
// Steam Censer Bowl - A high-quality brass bowl, with an inlaid magnetic portion, presumably to allow induction heating.
// Steam Censer Cage - A beautifully-built brass cage, covered in flowing script and completed with an iconographic interpretation of Ratvar, the Clockwork God.

/obj/machinery/smoke_machine/steam_censer

// Clockwork Timekeeper - Space/Lavaland Loot: A Clockwork Cult-styled artificial heart. Roughly on par with a Tier-3 augment, but without the drawback of EMP vulnerability nor the epinephrine dose.
// Brassbellow Ventriclium - A small, intricate chamber, similar in appearance to an old set of bellows, which, given the waterproof parts, is probably designed to move fluids. It has an empty slot on it, and seems to be missing a number of parts.
// Glowing Brass Vial - A small brass vial of glowing green liquid. It feels warm to the touch, and seems to pulsate slightly.
// Timekeeper Mechanism - A little assembly of gears and pipes. Looks important- and incomplete. Whatever piece this came from probably relies on it to keep time.
// Additional parts- screwdriver

/obj/item/organ/heart/clockwork
	name = "clockwork timekeeper"
	desc = "An electronic device designed to mimic the functions of an organic human heart. Also holds an emergency dose of epinephrine, used automatically after facing severe trauma. This upgraded model can regenerate its dose after use."
	icon_state = "heart-clockwork"
	maxHealth = 2 * STANDARD_ORGAN_THRESHOLD
	organ_flags = ORGAN_SYNTHETIC

/obj/item/artifact/timekeeper/ventriclium
	name = "brassbellow ventriclium"
	desc = "A small, intricate chamber, similar in appearance to an old set of bellows, which, given the waterproof parts, is probably designed to move fluids. It has an empty slot on it, and seems to be missing a number of parts."

/obj/item/artifact/timekeeper/vial
	name = "glowing brass vial"
	desc = "A small brass vial of glowing green liquid. It feels warm to the touch, and seems to pulsate slightly."

/obj/item/artifact/timekeeper/mechanism
	name = "timekeeper mechanism"
	desc = "A little assembly of gears and pipes. Looks important- and incomplete. Whatever piece this came from probably relies on it to keep time."

// Hardlight Engitool "Matryoshka" - Space Loot: An old-school third-soviet-era prototype hardlight engineering engitool. Never saw mass-production due to high costs and complexity - and due to the factory that held the blueprints burning down during a riot.
// Tool Types: Crowbar, Screwdriver, Wirecutters, Wrench, Knife, Pickaxe, Shovel, Lighter
// Engitool Casing - A small, ergonomic casing. Looks like a flashlight or a laser pointer, but larger. On the base is a dial with a number of tool pictograms, and along the side is some Cyrillic script: /"МАТРЕШКА/".
// Engiool Emitter - An old-school hardlight emitter. Although almost entirely supplanted by more modern technology today, hardlight tech was an interesting experimental feature in days gone by- even if it was too expensive and complex for most use-cases.
// Additional parts- cell, cable

/obj/item/omnitool
	name = "hardlight engitool"
	desc = "An old-school Neosoviet-era prototype hardlight engineering engitool. Never saw mass-production due to high costs and complexity - and due to the factory that held the blueprints burning down during a riot."
	icon = 'icons/obj/tools.dmi'
	icon_state = "engitool"
	toolspeed = 1.2 //the jack of all trades is the master of none
	tool_behaviour = null

/obj/item/omnitool/examine()
	. = ..()
	. += " The dial is set to the [tool_behaviour] position."

/obj/item/debug/omnitool/proc/check_menu(mob/user)
	if(!istype(user))
		return FALSE
	if(user.incapacitated() || !user.Adjacent(src))
		return FALSE
	return TRUE

/obj/item/omnitool/attack_self(mob/user)
	if(!user)
		return
	var/list/tool_list = list(
		"Crowbar" = image(icon = 'icons/obj/tools.dmi', icon_state = "crowbar"),
		"Screwdriver" = image(icon = 'icons/obj/tools.dmi', icon_state = "screwdriver_map"),
		"Wirecutters" = image(icon = 'icons/obj/tools.dmi', icon_state = "cutters_map"),
		"Wrench" = image(icon = 'icons/obj/tools.dmi', icon_state = "wrench"),
		"Pickaxe" = image(icon = 'icons/obj/mining.dmi', icon_state = "minipick"),
		"Shovel" = image(icon = 'icons/obj/mining.dmi', icon_state = "spade"),
		"Knife" = image(icon = 'icons/obj/kitchen.dmi', icon_state = "knife")
		)
	var/tool_result = show_radial_menu(user, src, tool_list, custom_check = CALLBACK(src, .proc/check_menu, user), require_near = TRUE, tooltips = TRUE)
	if(!check_menu(user))
		return
	switch(tool_result)
		if("Crowbar")
			tool_behaviour = TOOL_CROWBAR
		if("Screwdriver")
			tool_behaviour = TOOL_SCREWDRIVER
		if("Wirecutters")
			tool_behaviour = TOOL_WIRECUTTER
		if("Wrench")
			tool_behaviour = TOOL_WRENCH
		if("Pickaxe")
			tool_behaviour = TOOL_MINING
		if("Shovel")
			tool_behaviour = TOOL_SHOVEL
		if("Knife")
			tool_behaviour = TOOL_KNIFE

// BarBuddy Home - Space Loot: One of BarBuddy's wide range of bartending accessories, the BarBuddy Home is designed for home applications. It can quickly produce glasses from inserted glass, as well as dispensing ice.

// TMSF Yeniçeri Hardlight Blade - Lavaland Loot: An ancient gas-powered hardlight blade, made some 300 years ago in Turkey. How exactly it ended up in the frontier is anyone’s guess.

// Hardlight Blade Hilt - An old, battered casing for a hardlight emitter. Based on the markings, this comes from a Turkish-made "Yeniçeri" blade, made by Kahraman some 300 years ago. It seems to be missing an emitter, and has a slot and piping that looks suited to accepting a gas tank.
// Hardlight Blade Emitter - An old-school hardlight emitter. Based on the connection ports for gas fittings, this is from the very inception of hardlight technology, which utilised gas as part of the process of emitting hardlight.
// Hardlight Blade Fittings - A set of pressure-resistant gas fittings, including pipes, valves, and a small gas tank. Based on the markings, this is part of a Turkish-made "Yeniçeri" blade.
// Additional parts- wrench, oxygen gas tank

/*
The history of hardlight technology is longer and more storied than most people think. While many believe it is a uniquely modern technology, humanity has been experimenting with it since at least the 2100s, and has had commercial examples available since the 2200s.
This ‘Yeniçeri’ sword is an example of such an early commercial design. Built in Turkey by Kahraman Heavy Industries during the 2250s, the blade represented a major leap forward in usable hardlight tech.
Via the use of an innovative (for the time) gas-sustained blade, the Yeniçeri was able to hold a consistent cutting edge with minimal flickering, although at the cost of needing its gas refilled for every few hours of use.
Despite its impressive tech, the Yeniçeri failed to gain commercial success. Most examples were sold to explorers and wayfarers beginning the long trek to new star systems, with military trials generally leaving governments unimpressed.
Fortunately, however, the innovations it made didn’t go unnoticed by engineers, and its technology would pave the way for future advancements in hardlight tech- now commonly used across all walks of engineering.
*/

// Y04-85b "Leigong" RTG - Space/Ground Loot: An old, dated RTG. Built by the Chinese company Xinghan, devices like this were frequently used during the Spinward Rush to power unmanned survey drones and small vessels. Produces a small amount of free power.
