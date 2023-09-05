/obj/item/ammo_box/magazine/wt550m9
	name = "wt550 magazine (4.6x30mm)"
	desc = "A compact top-loading PDW magazine, designed to chamber 4.6x30mm."
	icon_state = "46x30mmt-20"
	base_icon_state = "46x30mmt"
	ammo_type = /obj/item/ammo_casing/c46x30mm
	caliber = "4.6x30mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/wt550m9/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 4)]"

/obj/item/ammo_box/magazine/wt550m9/wtap
	name = "wt550 magazine (Armour Piercing 4.6x30mm)"
	icon_state = "46x30mmtA-20"
	base_icon_state = "46x30mmtA"
	ammo_type = /obj/item/ammo_casing/c46x30mm/ap

/obj/item/ammo_box/magazine/wt550m9/wtap/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(), 4)]"

/obj/item/ammo_box/magazine/wt550m9/wtic
	name = "wt550 magazine (Incendiary 4.6x30mm)"
	icon_state = "46x30mmtI-20"
	ammo_type = /obj/item/ammo_casing/c46x30mm/inc

/obj/item/ammo_box/magazine/wt550m9/wtic/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/uzim9mm
	name = "long SMG magazine (9mm)"
	desc = "A long submachine gun magazine, designed to chamber 9mm."
	icon_state = "uzi9mm-32"
	base_icon_state = "uzi9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 32

/obj/item/ammo_box/magazine/uzim9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),4)]"

/obj/item/ammo_box/magazine/smgm9mm
	name = "SMG magazine (9mm)"
	desc = "A submachine gun magazine, designed to chamber 9mm."
	icon_state = "smg9mm-42"
	base_icon_state = "smg9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 30

/obj/item/ammo_box/magazine/smgm9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 42 : 0]"

/obj/item/ammo_box/magazine/smgm9mm/ap
	name = "SMG magazine (Armour Piercing 9mm)"
	ammo_type = /obj/item/ammo_casing/c9mm/ap

/obj/item/ammo_box/magazine/smgm9mm/fire
	name = "SMG Magazine (Incendiary 9mm)"
	ammo_type = /obj/item/ammo_casing/c9mm/inc

/obj/item/ammo_box/magazine/smgm9mm/rubbershot
	name = "SMG Magazine (Rubbershot 9mm)"
	ammo_type = /obj/item/ammo_casing/c9mm/rubbershot

/obj/item/ammo_box/magazine/smgm10mm
	name = "SMG magazine (10mm)"
	icon_state = "smg10mm-24"
	base_icon_state = "smg10mm"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = "10mm"
	max_ammo = 24

/obj/item/ammo_box/magazine/smgm10mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() == 1 ? 1 : round(ammo_count(),3)]"

/obj/item/ammo_box/magazine/smgm10mm/rubbershot
	name = "SMG magazine (Rubbershot 10mm)"
	ammo_type = /obj/item/ammo_casing/c10mm/rubbershot

/obj/item/ammo_box/magazine/smgm45
	name = "SMG magazine (.45)"
	desc = "A bullpup submachine gun magazine, designed to chamber .45."
	icon_state = "c20r45-24"
	base_icon_state = "c20r45"
	ammo_type = /obj/item/ammo_casing/c45
	caliber = ".45"
	max_ammo = 24

/obj/item/ammo_box/magazine/smgm45/update_icon_state() //This is stupid (whenever ammo is spent, it updates the icon path)
	. = ..()
	icon_state = "c20r45-[round(ammo_count(),2)]"

/obj/item/ammo_box/magazine/smgm45/drum
	name = "drum magazine (.45)"
	desc = "A bulky drum magazine for submachine guns, designed to chamber .45."
	icon_state = "drum45"
	max_ammo = 50
	w_class = WEIGHT_CLASS_NORMAL

/obj/item/ammo_box/magazine/smgm45/drum/update_icon_state() //Causes the mag to NOT inherit the parent's update_icon oooh the misery
	. = ..()
	icon_state = "drum45"

/obj/item/ammo_box/magazine/pistol556mm
	name = "handgun magazine (5.56mm HITP caseless)"
	desc = "A double-stack handgun magazine designed to chamber 5.56mm HITP caseless."
	icon_state = "5.56mmHITP-12" //ok i did it
	base_icon_state = "5.56mmHITP"
	ammo_type = /obj/item/ammo_casing/caseless/c556mm
	caliber = "5.56mm caseless"
	max_ammo = 12

/obj/item/ammo_box/magazine/pistol556mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[round(ammo_count(),2)]"

/obj/item/ammo_box/magazine/tec9
	name = "machine pistol magazine(9mm AP)"
	desc = "A very high capacity machine pistol magazine, designed to chamber 9mm."
	icon_state = "tec_mag"
	ammo_type = /obj/item/ammo_casing/c9mm/ap
	caliber = "9mm"
	max_ammo = 20
