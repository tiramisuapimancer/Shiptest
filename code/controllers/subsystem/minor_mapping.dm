SUBSYSTEM_DEF(minor_mapping)
	name = "Minor Mapping"
	init_order = INIT_ORDER_MINOR_MAPPING
	flags = SS_NO_FIRE

/datum/controller/subsystem/minor_mapping/Initialize(timeofday)
	trigger_migration(CONFIG_GET(number/mice_roundstart))
	place_satchels(CONFIG_GET(number/smuggler_satchels))
	return ..()

/datum/controller/subsystem/minor_mapping/proc/trigger_migration(num_mice=10)
	var/list/exposed_wires = find_exposed_wires()

	var/mob/living/simple_animal/mouse/M
	var/turf/proposed_turf

	while((num_mice > 0) && exposed_wires.len)
		proposed_turf = pick_n_take(exposed_wires)
		if(!M)
			M = new(proposed_turf)
		else
			M.forceMove(proposed_turf)
		if(M.environment_air_is_safe())
			num_mice -= 1
			M = null

/datum/controller/subsystem/minor_mapping/proc/place_satchels(amount=3)
	var/list/turfs = find_satchel_suitable_turfs()

	while(turfs.len && amount > 0)
		var/turf/T = pick_n_take(turfs)
		var/obj/item/storage/backpack/satchel/flat/F = new(T)

		SEND_SIGNAL(F, COMSIG_OBJ_HIDE, T.intact)
		amount--

/proc/find_exposed_wires()
	var/list/exposed_wires = list()

	var/list/all_turfs
	for(var/datum/virtual_level/vlevel as anything in SSmapping.virtual_levels_by_trait(ZTRAIT_STATION))
		all_turfs += vlevel.get_block()
	for(var/turf/open/floor/plating/T in all_turfs)
		if(T.is_blocked_turf())
			continue
		if(locate(/obj/structure/cable) in T)
			exposed_wires += T

	return shuffle(exposed_wires)

/proc/find_satchel_suitable_turfs()
	var/list/suitable = list()

	for(var/datum/virtual_level/vlevel as anything in SSmapping.virtual_levels_by_trait(ZTRAIT_STATION))
		for(var/t in vlevel.get_block())
			if(isfloorturf(t) && !isplatingturf(t))
				suitable += t

	return shuffle(suitable)
