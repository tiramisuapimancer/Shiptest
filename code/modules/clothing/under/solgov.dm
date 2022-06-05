/obj/item/clothing/under/solgov
	name = "\improper SolGov fatigues"
	desc = "Standard combat uniform for SolGov's officers."
	icon = 'icons/obj/clothing/under/solgov.dmi'
	mob_overlay_icon = 'icons/mob/clothing/under/solgov.dmi'
	icon_state = "fatigues"
	item_state = "fatigues"
	armor = list("melee" = 10, "bullet" = 5, "laser" = 5,"energy" = 5, "bomb" = 5, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)
	strip_delay = 50
	can_adjust = FALSE

/obj/item/clothing/under/solgov/elite
	name = "\improper SolGov elite jumpsuit"
	desc = "It's a jumpsuit for SolGov's elite officers. Designed to be comfortable in heavy armor."
	icon_state = "elite"
	item_state = "elite"
	armor = list("melee" = 15, "bullet" = 10, "laser" = 5,"energy" = 5, "bomb" = 10, "bio" = 0, "rad" = 0, "fire" = 30, "acid" = 30)

/obj/item/clothing/under/solgov/formal
	name = "\improper SolGov formal uniform"
	desc = "A formal SolGov uniform, for special occasions."
	icon_state = "formal_solgov"
	item_state = "formal_solgov"
	can_adjust = TRUE

/obj/item/clothing/under/solgov/formal/terragov
	name = "\improper TerraGov formal uniform"
	desc = "A formal SolGov uniform, for special occasions. This one is still colored in original TerraGov green."
	icon_state = "formal_terragov"
	item_state = "formal_terragov"
	can_adjust = FALSE

/obj/item/clothing/under/plasmaman/solgov
	name = "\improper SolGov envirosuit"
	desc = "The pride of Solarian plasmamen everywhere- though this tends to be a somewhat exclusive club, due to Sol's agressive workplace safety regulations."
	icon = 'icons/obj/clothing/under/solgov.dmi' //ogan i am going to kill you i stg
	mob_overlay_icon = 'icons/mob/clothing/under/solgov.dmi'
	icon_state = "plasma_solgov"
	item_state = "plasma_solgov"
	can_adjust = FALSE
