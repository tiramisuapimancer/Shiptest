/// The light switch. Can have multiple per area.
/obj/machinery/light_switch
	name = "light switch"
	icon = 'icons/obj/power.dmi'
	icon_state = "light1"
	desc = "Make dark."
	power_channel = AREA_USAGE_LIGHT
	/// Set this to a string, path, or area instance to control that area
	/// instead of the switch's location.
	var/area/area = null

	FASTDMM_PROP(\
		set_instance_vars(\
			pixel_x = dir & EAST ? 23 : (dir & WEST  ? -23 : INSTANCE_VAR_DEFAULT),\
			pixel_y = dir & NORTH ? 23 : (dir & SOUTH ? -23 : INSTANCE_VAR_DEFAULT)\
		),\
		dir_amount = 8\
	)

/obj/machinery/light_switch/Initialize()
	. = ..()
	if(istext(area))
		area = text2path(area)
	if(ispath(area))
		area = GLOB.areas_by_type[area]
	if(!area)
		area = get_area(src)

	if(!name)
		name = "light switch ([area.name])"

	update_icon()

/obj/machinery/light_switch/update_icon_state()
	SSvis_overlays.remove_vis_overlay(src, managed_vis_overlays)
	luminosity = 0
	if(machine_stat & NOPOWER)
		icon_state = "light-p"
	else
		luminosity = 1
		SSvis_overlays.add_vis_overlay(src, icon, "light-glow", EMISSIVE_LAYER, EMISSIVE_PLANE, dir, alpha)
		if(area.lightswitch)
			icon_state = "light1"
		else
			icon_state = "light0"

/obj/machinery/light_switch/examine(mob/user)
	. = ..()
	. += "It is [area.lightswitch ? "on" : "off"]."

/obj/machinery/light_switch/interact(mob/user)
	. = ..()

	area.lightswitch = !area.lightswitch
	play_click_sound("button")
	area.update_icon()

	for(var/obj/machinery/light_switch/L in area)
		L.update_icon()

	area.power_change()

/obj/machinery/light_switch/power_change()
	SHOULD_CALL_PARENT(0)
	if(area == get_area(src))
		return ..()

/obj/machinery/light_switch/emp_act(severity)
	. = ..()
	if (. & EMP_PROTECT_SELF)
		return
	if(!(machine_stat & (BROKEN|NOPOWER)))
		power_change()
