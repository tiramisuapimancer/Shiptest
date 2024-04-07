/obj/item/gun/energy/kalix //blue //todo: fix up belt_mirror.dmi, it's incomprehensible
	name = "Etherbor BG-12"
	desc = "Brought to you by Etherbor Industries, proudly based within the PGF, is the BG-12 energy beam gun! The BG-12 is Etherbor's current newest civilian energy weapon model."
	icon_state = "kalixgun"
	item_state = "kalixgun"
	icon = 'icons/obj/guns/faction/gezena/energy.dmi'
	lefthand_file = 'icons/obj/guns/faction/gezena/lefthand.dmi'
	righthand_file = 'icons/obj/guns/faction/gezena/righthand.dmi'
	mob_overlay_icon = 'icons/mob/clothing/faction/gezena/belt.dmi'
	w_class = WEIGHT_CLASS_NORMAL

	modifystate = TRUE

	wield_delay = 0.7 SECONDS
	wield_slowdown = 0.35

	cell_type = /obj/item/stock_parts/cell/gun/kalix
	ammo_type = list(/obj/item/ammo_casing/energy/kalix, /obj/item/ammo_casing/energy/disabler/hitscan)

	load_sound = 'sound/weapons/gun/gauss/pistol_reload.ogg'

	manufacturer = MANUFACTURER_PGF

/obj/item/ammo_casing/energy/kalix
	projectile_type = /obj/projectile/beam/hitscan/kalix
	fire_sound = 'sound/weapons/gun/energy/kalixsmg.ogg'
	e_cost = 666 //30 shots per cell
	delay = 1

/obj/projectile/beam/hitscan/kalix
	name = "concentrated energy"
	tracer_type = /obj/effect/projectile/tracer/kalix
	muzzle_type = /obj/effect/projectile/muzzle/kalix
	impact_type = /obj/effect/projectile/impact/kalix
	hitscan_light_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	muzzle_flash_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	impact_light_color_override = LIGHT_COLOR_ELECTRIC_CYAN
	range = 10
	damage_constant = 0.8
	damage = 25
	armour_penetration = -10

/obj/item/gun/energy/kalix/pgf
	name = "Etherbor BG-16"
	desc = "An advanced variant of the BG-12, the BG-16 is the military-grade beam gun designed and manufactured by Etherbor Industries as the standard-issue close-range weapon of the PGF."
	icon_state = "pgfgun"
	item_state = "pgfgun"

	cell_type = /obj/item/stock_parts/cell/gun/pgf
	ammo_type = list(/obj/item/ammo_casing/energy/pgf , /obj/item/ammo_casing/energy/disabler/hitscan)

/obj/item/gun/energy/kalix/pgf/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.16 SECONDS)

/obj/projectile/beam/hitscan/kalix/pgf
	name = "concentrated energy"
	tracer_type = /obj/effect/projectile/tracer/pgf
	muzzle_type = /obj/effect/projectile/muzzle/pgf
	impact_type = /obj/effect/projectile/impact/pgf
	hitscan_light_color_override = LIGHT_COLOR_ELECTRIC_GREEN
	muzzle_flash_color_override = LIGHT_COLOR_ELECTRIC_GREEN
	impact_light_color_override = LIGHT_COLOR_ELECTRIC_GREEN

/obj/item/ammo_casing/energy/pgf
	projectile_type = /obj/projectile/beam/hitscan/kalix/pgf
	fire_sound = 'sound/weapons/gun/energy/kalixsmg.ogg'
	delay = 1

/obj/item/gun/energy/kalix/pistol //blue //todo: fix up belt_mirror.dmi, it's incomprehensible
	name = "Etherbor SG-8"
	desc = "Etherbor's current and sidearm offering. While intended for marines, it's also available for civillians"
	icon_state = "kalixpistol"
	item_state = "kalixpistol"
	w_class = WEIGHT_CLASS_SMALL

	modifystate = FALSE

	wield_delay = 0.2 SECONDS
	wield_slowdown = 0.15

	spread = 2
	spread_unwielded = 5

	cell_type = /obj/item/stock_parts/cell/gun/kalix
	ammo_type = list(/obj/item/ammo_casing/energy/kalix/pistol)


	load_sound = 'sound/weapons/gun/gauss/pistol_reload.ogg'

/obj/item/ammo_casing/energy/kalix/pistol
	fire_sound = 'sound/weapons/gun/energy/kalixpistol.ogg'
	e_cost = 1250 //10 shots per cell
	delay = 0

/obj/item/gun/energy/kalix/pgf/heavy
	name = "Etherbor HBG-7"
	desc = "The HBG-7 is the standard-issue rifle weapon of the PGF. If the stopping power and fire rate isn't enough, it comes with a DMR mode that has greater armor piercing for dealing with armored targets."
	icon_state = "pgfheavy"
	item_state = "pgfheavy"
	icon = 'icons/obj/guns/faction/gezena/48x32.dmi'
	mob_overlay_icon = 'icons/mob/clothing/faction/gezena/back.dmi'
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK

	modifystate = FALSE

	wield_delay = 0.7 SECONDS
	wield_slowdown = 0.6

	spread = 0
	spread_unwielded = 20

	ammo_type = list(/obj/item/ammo_casing/energy/pgf/assault, /obj/item/ammo_casing/energy/pgf/sniper)

/obj/item/gun/energy/kalix/pgf/heavy/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.2 SECONDS)

/obj/item/ammo_casing/energy/pgf/assault
	select_name  = "AR"
	projectile_type = /obj/projectile/beam/hitscan/kalix/pgf/assault
	fire_sound = 'sound/weapons/gun/energy/kalixrifle.ogg'
	e_cost = 1000 //20 shots per cell
	delay = 1

/obj/projectile/beam/hitscan/kalix/pgf/assault
	tracer_type = /obj/effect/projectile/tracer/pgf/rifle
	muzzle_type = /obj/effect/projectile/muzzle/pgf/rifle
	impact_type = /obj/effect/projectile/impact/pgf/rifle
	damage = 25 //bar
	armour_penetration = 20
	range = 12
	damage_constant = 0.9

/obj/item/ammo_casing/energy/pgf/sniper
	select_name  = "DMR"
	projectile_type = /obj/projectile/beam/hitscan/kalix/pgf/sniper
	fire_sound = 'sound/weapons/gun/laser/heavy_laser.ogg'
	e_cost = 2000 //20 shots per cell
	delay = 6

/obj/projectile/beam/hitscan/kalix/pgf/sniper
	tracer_type = /obj/effect/projectile/tracer/laser/emitter
	muzzle_type = /obj/effect/projectile/muzzle/laser/emitter
	impact_type = /obj/effect/projectile/impact/laser/emitter

	damage = 35
	armour_penetration = 40
	range = 20
	damage_constant = 1

/obj/item/gun/energy/kalix/pgf/heavy/sniper
	name = "Etherbor HBG-7L"
	desc = "HBG-7 with a longer barrel and scope. Intended to get the best use out of the DMR mode, it suffers if used normally from longer wield times and slowdown"
	icon_state = "pgfheavy_sniper"
	item_state = "pgfheavy_sniper"

	zoomable = TRUE
	zoom_amt = 10 //Long range, enough to see in front of you, but no tiles behind you.
	zoom_out_amt = 5

	spread = -5
	spread_unwielded = 40

	wield_slowdown = 1
	wield_delay = 1.3 SECONDS
