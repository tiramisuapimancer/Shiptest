/datum/gear/accessory
	subtype_path = /datum/gear/accessory
	slot = ITEM_SLOT_NECK
	sort_category = "Accessories"

//Scarves

/datum/gear/accessory/scarf
	subtype_path = /datum/gear/accessory/scarf

/datum/gear/accessory/scarf/red
	display_name = "scarf, red"
	path = /obj/item/clothing/neck/scarf/red

/datum/gear/accessory/scarf/green
	display_name = "scarf, green"
	path = /obj/item/clothing/neck/scarf/green

/datum/gear/accessory/scarf/blue
	display_name = "scarf, blue"
	path = /obj/item/clothing/neck/scarf/darkblue

//(The actually good scarves)

/datum/gear/accessory/scarf/striped
	subtype_path = /datum/gear/accessory/scarf/striped

/datum/gear/accessory/scarf/striped/red
	display_name = "striped scarf, red"
	path = /obj/item/clothing/neck/stripedredscarf

/datum/gear/accessory/scarf/striped/green
	display_name = "striped scarf, green"
	path = /obj/item/clothing/neck/stripedgreenscarf

/datum/gear/accessory/scarf/striped/blue
	display_name = "striped scarf, blue"
	path = /obj/item/clothing/neck/stripedbluescarf

//Ties

/datum/gear/accessory/tie
	subtype_path = /datum/gear/accessory/tie

/datum/gear/accessory/tie/recolorable
	display_name = "tie, recolorable"
	path =  /obj/item/clothing/neck/tie

//Misc

/datum/gear/accessory/armband_red
	display_name = "armband"
	path = /obj/item/clothing/accessory/armband
	slot = null

/datum/gear/accessory/waistcoat
	display_name = "waistcoat"
	path = /obj/item/clothing/accessory/waistcoat
	slot = null

/datum/gear/accessory/stethoscope
	display_name = "stethoscope"
	path = /obj/item/clothing/neck/stethoscope
	allowed_roles = list("Medical Doctor", "Chief Medical Officer")

/datum/gear/accessory/collar
	display_name = "pet collar"
	description = "Only the truly insane would wear this around their neck."
	path = /obj/item/clothing/neck/petcollar

/datum/gear/accessory/maidneckpiece
	display_name = "maid neckpiece"
	path = /obj/item/clothing/neck/maid

/datum/gear/accessory/gloves/evening
	display_name = "evening gloves"
	description = "Excessively fancy elbow-length gloves."
	path = /obj/item/clothing/gloves/color/evening
	slot = ITEM_SLOT_GLOVES

/datum/gear/accessory/gloves/maid
	display_name = "maid arm covers"
	path = /obj/item/clothing/gloves/maid
	slot = ITEM_SLOT_GLOVES

/datum/gear/accessory/tiki
	display_name = "tiki mask"
	description = "A wooden mask, simple, really."
	path = /obj/item/clothing/mask/gas/tiki_mask
	slot = ITEM_SLOT_MASK

/datum/gear/accessory/joymask
	display_name = "face with tears of joy mask"
	path = /obj/item/clothing/mask/joy
	slot = ITEM_SLOT_MASK
