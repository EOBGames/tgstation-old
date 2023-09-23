/obj/item/ammo_casing/energy/laser
	projectile_type = /obj/projectile/beam/laser
	e_cost = 83
	select_name = "kill"

/obj/item/ammo_casing/energy/laser/hellfire
	projectile_type = /obj/projectile/beam/laser/hellfire
	e_cost = 100
	select_name = "maim"

/obj/item/ammo_casing/energy/laser/hellfire/antique
	e_cost = 100

/obj/item/ammo_casing/energy/lasergun
	projectile_type = /obj/projectile/beam/laser
	e_cost = 62.5
	select_name = "kill"

/obj/item/ammo_casing/energy/lasergun/old
	projectile_type = /obj/projectile/beam/laser
	e_cost = 200
	select_name = "kill"

/obj/item/ammo_casing/energy/laser/hos
	e_cost = 120

/obj/item/ammo_casing/energy/laser/musket
	projectile_type = /obj/projectile/beam/laser/musket
	e_cost = 1000

/obj/item/ammo_casing/energy/laser/musket/prime
	projectile_type = /obj/projectile/beam/laser/musket/prime

/obj/item/ammo_casing/energy/laser/practice
	projectile_type = /obj/projectile/beam/practice
	select_name = "practice"
	harmful = FALSE

/obj/item/ammo_casing/energy/chameleon
	projectile_type = /obj/projectile/energy/chameleon
	e_cost = 0
	var/projectile_vars = list()

/obj/item/ammo_casing/energy/chameleon/ready_proj()
	. = ..()

	loaded_projectile.name = projectile_vars["name"]
	loaded_projectile.icon = projectile_vars["icon"]
	loaded_projectile.icon_state = projectile_vars["icon_state"]
	loaded_projectile.speed = projectile_vars["speed"]
	loaded_projectile.color = projectile_vars["color"]
	loaded_projectile.hitsound = projectile_vars["hitsound"]
	loaded_projectile.impact_effect_type = projectile_vars["impact_effect_type"]
	loaded_projectile.range = projectile_vars["range"]
	loaded_projectile.suppressed = projectile_vars["suppressed"]
	loaded_projectile.hitsound_wall =	projectile_vars["hitsound_wall"]
	loaded_projectile.pass_flags = projectile_vars["pass_flags"]

	if(!loaded_projectile)
		newshot()

/obj/item/ammo_casing/energy/laser/scatter
	projectile_type = /obj/projectile/beam/scatter
	pellets = 5
	variance = 25
	select_name = "scatter"

/obj/item/ammo_casing/energy/laser/scatter/disabler
	projectile_type = /obj/projectile/beam/disabler
	pellets = 3
	variance = 15
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/heavy
	projectile_type = /obj/projectile/beam/laser/heavylaser
	select_name = "anti-vehicle"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'

/obj/item/ammo_casing/energy/laser/pulse
	projectile_type = /obj/projectile/beam/pulse
	e_cost = 200
	select_name = "DESTROY"
	fire_sound = 'sound/weapons/pulse.ogg'

/obj/item/ammo_casing/energy/laser/bluetag
	projectile_type = /obj/projectile/beam/lasertag/bluetag
	select_name = "bluetag"
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/bluetag/hitscan
	projectile_type = /obj/projectile/beam/lasertag/bluetag/hitscan

/obj/item/ammo_casing/energy/laser/redtag
	projectile_type = /obj/projectile/beam/lasertag/redtag
	select_name = "redtag"
	harmful = FALSE

/obj/item/ammo_casing/energy/laser/redtag/hitscan
	projectile_type = /obj/projectile/beam/lasertag/redtag/hitscan

/obj/item/ammo_casing/energy/xray
	projectile_type = /obj/projectile/beam/xray
	e_cost = 50
	fire_sound = 'sound/weapons/laser3.ogg'

/obj/item/ammo_casing/energy/mindflayer
	projectile_type = /obj/projectile/beam/mindflayer
	select_name = "MINDFUCK"
	fire_sound = 'sound/weapons/laser.ogg'

/obj/item/ammo_casing/energy/laser/minigun
	select_name = "kill"
	projectile_type = /obj/projectile/beam/weak/penetrator
	variance = 0.8

/obj/item/ammo_casing/energy/nanite
	projectile_type = /obj/projectile/bullet/c10mm //henk
	select_name = "bullet"
	e_cost = 120
	fire_sound = 'sound/weapons/thermalpistol.ogg'

/obj/item/ammo_casing/energy/nanite/inferno
	projectile_type = /obj/projectile/energy/inferno
	select_name = "inferno"

/obj/item/ammo_casing/energy/nanite/cryo
	projectile_type = /obj/projectile/energy/cryo
	select_name = "cryo"

///not exactly an energy ammo casing, but it's used by the laser gatling.
/obj/item/ammo_casing/laser
	name = "laser casing"
	desc = "You shouldn't be seeing this."
	caliber = CALIBER_LASER
	icon_state = "s-casing-live"
	base_icon_state = "s-casing-live"
	slot_flags = null
	projectile_type = /obj/projectile/beam
	fire_sound = 'sound/weapons/laser.ogg'
	firing_effect_type = /obj/effect/temp_visual/dir_setting/firing_effect/energy

/obj/item/ammo_casing/laser/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/caseless)

/obj/item/ammo_casing/laser/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]"
