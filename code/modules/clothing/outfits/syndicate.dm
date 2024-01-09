//top outfit of everything syndicate. Don't change this.

/datum/outfit/job/syndicate
	name = "Syndicate (mostly) Empty"

	uniform = /obj/item/clothing/under/syndicate
	box = /obj/item/storage/box/survival/syndie
	id = /obj/item/card/id/syndicate_command/crew_id

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

/datum/outfit/job/syndicate/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_SYNDICATE)

//generates a codename and assigns syndicate access, used in the twinkleshine.
/datum/outfit/job/syndicate/proc/assign_codename(mob/living/carbon/human/H)
	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.twinkle_names) + "-" + num2text(rand(1, 12)) // squidquest real
	I.access |= list(ACCESS_SYNDICATE)
	I.update_label()

//and now, for the Assistants

/datum/outfit/job/syndicate/assistant
	name = "Junior Agent (Assistant)"
	jobtype = /datum/job/assistant

	uniform = /obj/item/clothing/under/syndicate/intern
	alt_uniform = null

	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/color/black
	ears = /obj/item/radio/headset
	back = /obj/item/storage/backpack

	id = /obj/item/card/id/syndicate_command/crew_id
	r_pocket = /obj/item/radio
	belt = /obj/item/pda

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/assistant/gorlex
	name = "Junior Agent (Gorlex Marauders)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	alt_uniform = /obj/item/clothing/under/syndicate

/datum/outfit/job/syndicate/assistant/gec
	name = "Deckhand (GEC)"

	uniform = /obj/item/clothing/under/syndicate
	suit = /obj/item/clothing/suit/toggle/hazard

	head = /obj/item/clothing/head/safety_helmet

/datum/outfit/job/syndicate/assistant/cybersun
	name = "Junior Agent (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/cybersun
	shoes = /obj/item/clothing/shoes/jackboots
	r_pocket = /obj/item/radio
	head = /obj/item/clothing/head/soft/cybersun

/datum/outfit/job/syndicate/assistant/twink
	name = "Deck Assistant (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/intern
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	ears = /obj/item/radio/headset/syndicate/alt
	mask = /obj/item/clothing/mask/chameleon
	r_pocket = /obj/item/kitchen/knife/combat/survival
	back = /obj/item/storage/backpack
	belt = /obj/item/storage/belt/military/assault
	implants = list(/obj/item/implant/weapons_auth)
	id = /obj/item/card/id/syndicate_command/crew_id

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/assistant/twink/post_equip(mob/living/carbon/human/H)
	. = ..()

	assign_codename(H)

//atmos techs

//Shiptest
/datum/outfit/job/syndicate/atmos
	name = "Atmospheric Technician (Syndicate)"
	jobtype = /datum/job/atmos

	belt = /obj/item/storage/belt/utility/atmostech

	uniform = /obj/item/clothing/under/rank/engineering/atmospheric_technician
	alt_uniform = /obj/item/clothing/under/rank/engineering/engineer/hazard
	alt_suit = /obj/item/clothing/suit/hazardvest
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/engineering

	r_pocket = /obj/item/analyzer
	l_pocket = /obj/item/pda/atmos

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	courierbag = /obj/item/storage/backpack/messenger/engi

	box = /obj/item/storage/box/survival/engineer

	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

/datum/outfit/job/syndicate/atmos/gec
	name = "Atmospheric Technician (GEC)"

	uniform = /obj/item/clothing/under/syndicate/gec/atmos_tech
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat
	id = /obj/item/card/id/syndicate_command/crew_id


//bartenders

/datum/outfit/job/syndicate/bartender
	name = "Bartender (Syndicate)"
	jobtype = /datum/job/bartender

	id = /obj/item/card/id/syndicate_command/crew_id
	head = /obj/item/clothing/head/HoS/beret/syndicate
	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	belt = /obj/item/pda/bar
	uniform = /obj/item/clothing/under/rank/civilian/bartender
	alt_uniform = /obj/item/clothing/under/rank/civilian/bartender/purple
	alt_suit = /obj/item/clothing/suit/apron/purple_bartender
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(/obj/item/storage/box/beanbag=1)
	shoes = /obj/item/clothing/shoes/laceup


/datum/outfit/job/syndicate/bartender/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()

	var/obj/item/card/id/W = H.wear_id
	if(H.age < AGE_MINOR)
		W.registered_age = AGE_MINOR
		to_chat(H, "<span class='notice'>You're not technically old enough to access or serve alcohol, but your ID has been discreetly modified to display your age as [AGE_MINOR]. Try to keep that a secret!</span>")


/datum/outfit/job/syndicate/bartender/twink
	name = "Bartender (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/donk
	shoes = /obj/item/clothing/shoes/laceup
	gloves = /obj/item/clothing/gloves/color/white
	ears = /obj/item/radio/headset/syndicate
	mask = /obj/item/clothing/mask/chameleon
	belt = /obj/item/storage/belt/bandolier
	implants = list(/obj/item/implant/weapons_auth)
	id = /obj/item/card/id/syndicate_command/crew_id

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/bartender/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

//botanist
/datum/outfit/job/syndicate/botanist
	name = "Botanist (Syndicate)"
	jobtype = /datum/job/hydro
	belt = /obj/item/pda/botanist
	suit = /obj/item/clothing/suit/apron
	alt_suit = /obj/item/clothing/suit/apron/overalls
	gloves  =/obj/item/clothing/gloves/botanic_leather
	suit_store = /obj/item/plant_analyzer

/datum/outfit/job/syndicate/botanist/suns
	name = "Botanist-Chemist (SUNS)"

	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/science
	suit =  /obj/item/clothing/suit/toggle/labcoat/chemist
	suit_store = null

//Capitan (Captain)

/datum/outfit/job/syndicate/captain
	name = "Captain (Syndicate)"
	jobtype = /datum/job/captain

	id = /obj/item/card/id/syndicate_command/captain_id
	ears = /obj/item/radio/headset/syndicate/alt/captain
	uniform = /obj/item/clothing/under/syndicate/officer
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/syndicate
	gloves = /obj/item/clothing/gloves/combat
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/pda/captain)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/captain/aclf
	name = "Captain (ACLF)"


/datum/outfit/job/syndicate/captain/twink
	name = "Captain (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/officer
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/syndicate/alt/captain
	mask = /obj/item/clothing/mask/chameleon
	l_pocket = /obj/item/melee/transforming/energy/sword/saber/red
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/syndicate
	suit_store = /obj/item/gun/ballistic/revolver/mateba
	r_pocket = /obj/item/kitchen/knife/combat/survival
	belt = /obj/item/storage/belt/military/assault
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/eyepatch
	implants = list(/obj/item/implant/weapons_auth)


/datum/outfit/job/syndicate/captain/sbc/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)


/datum/outfit/job/syndicate/captain/gorlex
	name = "Captain (Gorlex Marauders)"
	uniform = /obj/item/clothing/under/syndicate/officer

	head = /obj/item/clothing/head/gorlexcap
	suit = /obj/item/clothing/suit/gorlex

/datum/outfit/job/syndicate/captain/cybersun
	name = "Captain (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/cybersun/officer
	suit = /obj/item/clothing/suit/armor/vest/capcarapace/cybersun
	head = /obj/item/clothing/head/HoS/cybersun
	gloves = /obj/item/clothing/gloves/combat


//cargo tech

/datum/outfit/job/syndicate/cargo_tech
	name = "Cargo Tech (Syndicate)"
	jobtype = /datum/job/cargo_tech

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/donk
	suit = /obj/item/clothing/suit/hazardvest/donk

	belt = /obj/item/pda/cargo
	alt_suit = /obj/item/clothing/suit/hazardvest
	l_hand = /obj/item/export_scanner
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/cargo=1)


/datum/outfit/job/syndicate/cargo_tech/donk
	name = "Customer Associate (Donk! Co)"

//chemist

/datum/outfit/job/syndicate/chemist
	name = "Chemist (Syndicate)"
	jobtype = /datum/job/chemist

	uniform = /obj/item/clothing/under/syndicate/intern
	id = /obj/item/card/id/syndicate_command/crew_id
	l_pocket =/obj/item/pda/chemist

	glasses = /obj/item/clothing/glasses/science
	belt = /obj/item/pda/chemist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/chemist

	box = /obj/item/storage/box/survival/medical

/datum/outfit/job/syndicate/chemist/gec
	name = "Chemist (GEC)"

	uniform = /obj/item/clothing/under/syndicate/intern
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat
	belt = /obj/item/storage/belt/utility/full/engi
	id = /obj/item/card/id/syndicate_command/crew_id
	l_pocket =/obj/item/pda/chemist

//Chief Engineer

/datum/outfit/job/syndicate/ce
	name = "Chief Engineer (Syndicate)"
	jobtype = /datum/job/chief_engineer

	id = /obj/item/card/id/syndicate_command/crew_id
	ears = /obj/item/radio/headset/syndicate/alt
	glasses = /obj/item/clothing/glasses/sunglasses

	belt = /obj/item/storage/belt/utility/chief/full
	l_pocket = /obj/item/pda/heads/ce
	uniform = /obj/item/clothing/under/rank/engineering/chief_engineer
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/hardhat/white
	gloves = /obj/item/clothing/gloves/color/black
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced=1)

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	courierbag = /obj/item/storage/backpack/messenger/engi
	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	chameleon_extras = /obj/item/stamp/ce


/datum/outfit/job/syndicate/ce/gec
	name = "Chief Engineer (GEC)"

	uniform = /obj/item/clothing/under/syndicate/gec/chief_engineer
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat/white
	shoes =/obj/item/clothing/shoes/laceup
	ears = /obj/item/radio/headset/syndicate/alt/captain
	id = /obj/item/card/id/syndicate_command/captain_id
	gloves = /obj/item/clothing/gloves/combat

/datum/outfit/job/syndicate/ce/gorlex
	name = "Foreman (Gorlex Marauders)"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/gorlex
	alt_uniform = null
	suit = /obj/item/clothing/suit/toggle/hazard
	alt_suit = null
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/combat

//Chief Medical Officer

/datum/outfit/job/syndicate/cmo
	name = "Medical Director (Cybersun)"
	jobtype = /datum/job/cmo

	uniform = /obj/item/clothing/under/rank/medical/chief_medical_officer/cybersun
	ears = /obj/item/radio/headset/syndicate/alt/captain
	id = /obj/item/card/id/syndicate_command/captain_id
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/pda/heads/cmo
	l_pocket = /obj/item/pinpointer/crew
	head = /obj/item/clothing/head/beret/cmo/cybersun
	suit = /obj/item/clothing/suit/toggle/labcoat/raincoat
	l_hand = /obj/item/storage/firstaid/medical
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)

/datum/outfit/job/syndicate/cmo/suns
	name = "Medical Director (SUNS)"

	uniform = /obj/item/clothing/under/syndicate
	ears = /obj/item/radio/headset/syndicate/alt/captain
	id = /obj/item/card/id/syndicate_command/captain_id
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/pda/heads/cmo
	l_pocket = /obj/item/pinpointer/crew
	shoes = /obj/item/clothing/shoes/sneakers/brown
	suit = /obj/item/clothing/suit/toggle/labcoat/cmo
	l_hand = /obj/item/storage/firstaid/medical
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)

//"Head Of Personnel"

/datum/outfit/job/syndicate/head_of_personnel
	name = "Bridge Officer (Syndicate)"
	jobtype = /datum/job/head_of_personnel

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/aclfgrunt
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/beret/syndicate
	gloves = /obj/item/clothing/gloves/color/white
	id = /obj/item/card/id/syndicate_command/crew_id
	r_pocket = /obj/item/kitchen/knife/combat/survival
	glasses = /obj/item/clothing/glasses/hud/health
	belt = /obj/item/pda/heads/head_of_personnel
	backpack_contents = list(/obj/item/storage/box/ids=1,\
		/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced = 1)

/datum/outfit/job/syndicate/head_of_personnel/cybersun
	name = "Intelligence Officer (Cybersun)"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/cybersun/officer
	suit = /obj/item/clothing/suit/cybersun_suit
	shoes = /obj/item/clothing/shoes/jackboots
	head = /obj/item/clothing/head/HoS/cybersun
	gloves = /obj/item/clothing/gloves/combat
	id = /obj/item/card/id/syndicate_command/crew_id
	r_pocket = /obj/item/kitchen/knife/combat/survival
	glasses = /obj/item/clothing/glasses/sunglasses

//head of security

/datum/outfit/job/syndicate/hos
	name = "Head Of Security (Syndicate)"
	jobtype = /datum/job/hos

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/combat
	head = /obj/item/clothing/head/HoS/syndicate
	suit = /obj/item/clothing/suit/armor/vest/syndie
	id = /obj/item/card/id/syndicate_command/crew_id
	belt = /obj/item/pda/heads/hos
	shoes = /obj/item/clothing/shoes/jackboots
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	suit_store = /obj/item/gun/energy/e_gun
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	backpack_contents = list(/obj/item/melee/baton/loaded=1)

/datum/outfit/job/syndicate/hos/gorlex
	name = "Sergeant (Syndicate)"

/datum/outfit/job/syndicate/hos/twink
	name = "Lieutenant (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/officer
	head = /obj/item/clothing/head/HoS/beret/syndicate
	ears = /obj/item/radio/headset/syndicate/alt
	mask = /obj/item/clothing/mask/chameleon
	gloves = /obj/item/clothing/gloves/combat
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	r_pocket = /obj/item/kitchen/knife/combat/survival
	belt = /obj/item/storage/belt/military/assault
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/armor/vest
	alt_suit = /obj/item/clothing/suit/gorlex
	id = /obj/item/card/id/syndicate_command/lieutenant
	implants = list(/obj/item/implant/weapons_auth)
	backpack_contents = list(/obj/item/melee/baton)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/hos/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

//medical doctors (assorted)

/datum/outfit/job/syndicate/doctor
	name = "Medical Doctor (Syndicate)"
	jobtype = /datum/job/doctor

	uniform = /obj/item/clothing/under/syndicate
	id = /obj/item/card/id/syndicate_command/crew_id
	shoes = /obj/item/clothing/shoes/jackboots
	belt = /obj/item/pda/medical
	shoes = /obj/item/clothing/shoes/sneakers/white
	alt_suit = /obj/item/clothing/suit/apron/surgical
	l_hand = /obj/item/storage/firstaid/medical

/datum/outfit/job/syndicate/doctor/suns
	name = "Medical Doctor (SUNS)"

/datum/outfit/job/syndicate/doctor/cybersun
	name = "Medical Doctor (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/medic
	accessory = /obj/item/clothing/accessory/armband/medblue
	shoes = /obj/item/clothing/shoes/jackboots

/datum/outfit/job/syndicate/doctor/gorlex
	name = "Medical Doctor (Gorlex)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	glasses = /obj/item/clothing/glasses/hud/health/prescription
	r_pocket = /obj/item/kitchen/knife/combat/survival
	back = /obj/item/storage/backpack/duffelbag/syndie/med
	id = /obj/item/card/id/syndicate_command/crew_id
	backpack_contents = list(/obj/item/storage/box/survival/syndie=1, /obj/item/storage/firstaid/medical,)

//paramedics


/datum/outfit/job/syndicate/paramedic
	name = "Paramedic (Syndicate)"
	jobtype = /datum/job/paramedic


	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/gorlex
	alt_uniform = null
	shoes = /obj/item/clothing/shoes/jackboots

	head = /obj/item/clothing/head/soft/paramedic
	suit =  /obj/item/clothing/suit/toggle/labcoat/paramedic
	alt_suit = /obj/item/clothing/suit/apron/surgical
	gloves = /obj/item/clothing/gloves/color/latex/nitrile/evil
	belt = /obj/item/storage/belt/medical/paramedic
	id = /obj/item/card/id
	l_pocket = /obj/item/pda/medical
	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/roller=1)
	pda_slot = ITEM_SLOT_LPOCKET

/datum/outfit/job/syndicate/paramedic/gorlex
	name = "Paramedic (Gorlex)"

/datum/outfit/job/syndicate/paramedic/cybersun
	name = "Field Medic (Cybersun Industries)"

	uniform = /obj/item/clothing/under/syndicate/medic
	head = /obj/item/clothing/head/soft/cybersun/medical
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/toggle/labcoat/raincoat

/datum/outfit/job/syndicate/paramedic/twink
	name = "Medic (Twinkleshine)"

	gloves = /obj/item/clothing/gloves/color/latex/nitrile/evil
	uniform = /obj/item/clothing/under/syndicate/medic
	glasses = /obj/item/clothing/glasses/hud/health
	belt = /obj/item/storage/belt/medical
	back = /obj/item/storage/backpack/duffelbag/syndie/med
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/longcoat/roboblack
	alt_suit = /obj/item/clothing/suit/toggle/labcoat
	suit_store =  null
	ears = /obj/item/radio/headset/syndicate
	mask = /obj/item/clothing/mask/chameleon
	id = /obj/item/card/id/syndicate_command/crew_id/med
	implants = list(/obj/item/implant/weapons_auth)
	backpack_contents = list(/obj/item/pda/brig_phys)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie/med
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/paramedic/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

//psychologist

/datum/outfit/job/syndicate/psychologist
	name = "Psychologist (Syndicate)"
	jobtype = /datum/job/psychologist

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/rank/medical/psychiatrist
	suit = /obj/item/clothing/suit/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	alt_uniform = null
	l_hand = /obj/item/clipboard
	belt = /obj/item/pda/medical
	pda_slot = ITEM_SLOT_BELT

/datum/outfit/job/syndicate/psychologist/suns
	name = "Ship Psychologist (SUNS)"

//patient (prisoner)

/datum/outfit/job/syndicate/patient
	name = "Long Term Patient"
	jobtype = /datum/job/prisoner

	id = /obj/item/card/id/patient
	uniform = /obj/item/clothing/under/rank/medical/gown
	alt_suit = null
	shoes = /obj/item/clothing/shoes/sandal/slippers

//Quartermaster

/datum/outfit/job/syndicate/quartermaster
	name = "Quartermaster (Syndicate)"
	jobtype = /datum/job/qm

	id = /obj/item/card/id/syndicate_command/captain_id

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/donk/qm
	suit = /obj/item/clothing/suit/hazardvest/donk/qm
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/laceup
	belt = /obj/item/pda/quartermaster
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/clipboard
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/cargo=1)

/datum/outfit/job/syndicate/quartermaster/donk
	name = "Manager (Donk! Co.)"
	id = /obj/item/card/id/syndicate_command/captain_id

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/syndicate/donk/qm
	suit = /obj/item/clothing/suit/hazardvest/donk/qm
	ears = /obj/item/radio/headset/syndicate/alt
	shoes = /obj/item/clothing/shoes/laceup

//security officers

/datum/outfit/job/syndicate/security
	name = "Operative (Syndicate)"
	jobtype = /datum/job/officer


	uniform = /obj/item/clothing/under/syndicate
	r_pocket = /obj/item/kitchen/knife/combat/survival
	belt = /obj/item/storage/belt/military
	back = /obj/item/storage/backpack
	suit = /obj/item/clothing/suit/armor/vest
	id = /obj/item/card/id/syndicate_command/crew_id

	ears = /obj/item/radio/headset/alt
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/helmet/sec
	shoes = /obj/item/clothing/shoes/jackboots
	l_pocket = /obj/item/restraints/handcuffs
	r_pocket = /obj/item/assembly/flash/handheld

	backpack_contents = list(
		/obj/item/melee/baton/loaded=1,
	)


/datum/outfit/job/syndicate/security/gorlex
	name = "Assault Operative (Gorlex)"

/datum/outfit/job/syndicate/security/twink
	name = "Operative (Twinkleshine)"
	uniform = /obj/item/clothing/under/syndicate/combat
	ears = /obj/item/radio/headset/syndicate/alt
	mask = /obj/item/clothing/mask/chameleon
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat
	l_pocket = /obj/item/gun/ballistic/automatic/pistol
	r_pocket = /obj/item/kitchen/knife/combat/survival
	belt = /obj/item/storage/belt/military/assault
	id = /obj/item/card/id/syndicate_command/crew_id
	implants = list(/obj/item/implant/weapons_auth)
	backpack_contents = list(/obj/item/gun_voucher/syndicate=1)

	head = null
	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/security/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

//Miners

/datum/outfit/job/syndicate/miner
	name = "Miner (Syndicate)"
	jobtype = /datum/job/mining

	belt = /obj/item/pda/shaftminer
	ears = /obj/item/radio/headset/headset_cargo/mining
	shoes = /obj/item/clothing/shoes/workboots/mining
	gloves = /obj/item/clothing/gloves/explorer
	uniform = /obj/item/clothing/under/rank/cargo/miner/lavaland
	l_pocket = /obj/item/reagent_containers/hypospray/medipen/survival
	r_pocket = /obj/item/storage/bag/ore
	backpack_contents = list(
		/obj/item/flashlight/seclite=1,\
		/obj/item/kitchen/knife/combat/survival=1,\
		/obj/item/mining_voucher=1,\
		/obj/item/stack/marker_beacon/ten=1)

/datum/outfit/job/syndicate/miner/gorlex
	name = "Wrecker (Gorlex Marauders)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	shoes = /obj/item/clothing/shoes/workboots
	ears = /obj/item/radio/headset/alt

/datum/outfit/job/syndicate/miner/twink
	name = "Miner (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	shoes = /obj/item/clothing/shoes/workboots
	glasses = /obj/item/clothing/glasses/meson/night
	gloves = /obj/item/clothing/gloves/explorer
	ears = /obj/item/radio/headset/syndicate
	mask = /obj/item/clothing/mask/chameleon
	r_pocket = /obj/item/kitchen/knife/combat/survival
	belt = /obj/item/storage/belt/mining/alt
	implants = list(/obj/item/implant/weapons_auth)
	id = /obj/item/card/id/syndicate_command/crew_id/engi

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/mining

/datum/outfit/job/syndicate/miner/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

/datum/outfit/job/syndicate/miner/cybersun
	name = "Field Agent (Cybersun)"

	id = /obj/item/card/id/syndicate_command/crew_id
	ears = /obj/item/radio/headset
	uniform = /obj/item/clothing/under/syndicate/cybersun
	accessory = /obj/item/clothing/accessory/armband/cargo
	head = /obj/item/clothing/head/soft/cybersun
	r_pocket = /obj/item/radio

/datum/outfit/job/syndicate/miner/gec
	name = "Shaft Miner (GEC)"

	id = /obj/item/card/id/syndicate_command/crew_id
	ears = /obj/item/radio/headset
	uniform = /obj/item/clothing/under/syndicate
	alt_uniform = null
	accessory = /obj/item/clothing/accessory/armband/cargo
	head = /obj/item/clothing/head/soft/black
	r_pocket = /obj/item/radio
	head = /obj/item/clothing/head/hardhat/orange
	suit = /obj/item/clothing/suit/toggle/industrial
	suit_store = /obj/item/tank/internals/emergency_oxygen/double

//"station" engineers

/datum/outfit/job/syndicate/engineer
	name = "Ship Technician (Syndicate)"
	jobtype = /datum/job/engineer

	id = /obj/item/card/id/syndicate_command/crew_id
	uniform = /obj/item/clothing/under/syndicate/aclfgrunt
	accessory = /obj/item/clothing/accessory/armband/engine
	glasses = /obj/item/clothing/glasses/sunglasses
	shoes = /obj/item/clothing/shoes/jackboots

	belt = /obj/item/storage/belt/utility/full/engi
	l_pocket = /obj/item/pda/engineering
	head = /obj/item/clothing/head/hardhat/dblue
	r_pocket = /obj/item/t_scanner

	box = /obj/item/storage/box/survival/engineer
	pda_slot = ITEM_SLOT_LPOCKET
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

/datum/outfit/job/syndicate/engineer/gec
	name = "Ship Engineer (GEC)"

	uniform = /obj/item/clothing/under/syndicate/gec
	suit = /obj/item/clothing/suit/toggle/hazard
	head = /obj/item/clothing/head/hardhat
	id = /obj/item/card/id/syndicate_command/crew_id

/datum/outfit/job/syndicate/engineer/gorlex
	name = "Mechanic (Gorlex Marauders)"

	uniform = /obj/item/clothing/under/syndicate/gorlex
	shoes = /obj/item/clothing/shoes/workboots
	alt_uniform = null
	glasses = null

/datum/outfit/job/syndicate/engineer/twink
	name = "Ship Engineer (Twinkleshine)"

	uniform = /obj/item/clothing/under/syndicate/gec
	accessory = null
	glasses = /obj/item/clothing/glasses/meson/night
	head = /obj/item/clothing/head/hardhat/orange
	gloves = /obj/item/clothing/gloves/tackler/combat/insulated
	ears = /obj/item/radio/headset/syndicate
	mask = /obj/item/clothing/mask/chameleon
	back = /obj/item/storage/backpack/industrial
	belt = /obj/item/storage/belt/utility/syndicate
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/hazardvest
	alt_suit = /obj/item/clothing/suit/toggle/hazard
	implants = list(/obj/item/implant/weapons_auth)
	id = /obj/item/card/id/syndicate_command/crew_id/engi
	backpack_contents = list(/obj/item/construction/rcd/combat, /obj/item/rcd_ammo/large)

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/syndicate/engineer/twink/post_equip(mob/living/carbon/human/H)
	. = ..()
	assign_codename(H)

/datum/outfit/job/syndicate/engineer/cybersun
	name = "Engineer (Cybersun)"

	uniform = /obj/item/clothing/under/syndicate/cybersun/research
	shoes = /obj/item/clothing/shoes/workboots
	r_pocket = /obj/item/radio
	head = /obj/item/clothing/head/soft/cybersun
	accessory = /obj/item/clothing/accessory/armband/engine
