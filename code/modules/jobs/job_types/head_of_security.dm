/datum/job/hos
	name = "Head of Security"
	auto_deadmin_role_flags = DEADMIN_POSITION_HEAD|DEADMIN_POSITION_SECURITY
	minimal_player_age = 14
	officer = TRUE
	wiki_page = "Head_of_Security" //WS Edit - Wikilinks/Warning

	outfit = /datum/outfit/job/hos
	mind_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	access = list(
		ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MECH_SECURITY,
		ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS,
		ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING,
		ACCESS_HEADS, ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA)
	minimal_access = list(
		ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MECH_SECURITY,
		ACCESS_FORENSICS_LOCKERS, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_ALL_PERSONAL_LOCKERS,
		ACCESS_RESEARCH, ACCESS_ENGINE, ACCESS_MINING, ACCESS_MEDICAL, ACCESS_CONSTRUCTION, ACCESS_MAILSORTING,
		ACCESS_HEADS, ACCESS_HOS, ACCESS_RC_ANNOUNCE, ACCESS_KEYCARD_AUTH, ACCESS_GATEWAY, ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)

	display_order = JOB_DISPLAY_ORDER_HEAD_OF_SECURITY

/datum/outfit/job/hos
	name = "Head of Security"
	job_icon = "headofsecurity"
	jobtype = /datum/job/hos

	id = /obj/item/card/id/silver
	belt = /obj/item/pda/heads/hos
	ears = /obj/item/radio/headset/headset_com
	uniform = /obj/item/clothing/under/rank/security/head_of_security
	alt_uniform = /obj/item/clothing/under/rank/security/head_of_security/alt
	shoes = /obj/item/clothing/shoes/jackboots
	suit = /obj/item/clothing/suit/armor/hos/trenchcoat
	alt_suit = /obj/item/clothing/suit/armor/vest/security/hos
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security //WS Edit - Alt Uniforms
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/HoS
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	suit_store = null
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	backpack_contents = list(/obj/item/melee/classic_baton=1)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	courierbag = /obj/item/storage/backpack/messenger/sec
	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)

	chameleon_extras = list(/obj/item/gun/energy/e_gun/hos, /obj/item/stamp/hos)

/datum/outfit/job/hos/hardsuit
	name = "Head of Security (Hardsuit)"

	mask = /obj/item/clothing/mask/gas/sechailer
	suit = /obj/item/clothing/suit/space/hardsuit/security/hos
	suit_store = /obj/item/tank/internals/oxygen
	backpack_contents = list(/obj/item/melee/baton/loaded=1, /obj/item/gun/energy/e_gun=1, /obj/item/ammo_box/magazine/co9mm=1) //WS edit - free lethals

/datum/outfit/job/hos/nanotrasen
	name = "Head of Security (Nanotrasen)"

	ears = /obj/item/radio/headset/nanotrasen/alt
	uniform = /obj/item/clothing/under/rank/security/head_of_security/nt
	alt_uniform = null
	head = /obj/item/clothing/head/beret/sec/hos

/datum/outfit/job/hos/frontiersmen
	name = "Master At Arms (frontiersmen)"

	ears = /obj/item/radio/headset/syndicate/alt
	uniform = /obj/item/clothing/under/rank/security/officer/frontier/officer
	head = /obj/item/clothing/head/caphat/frontier
	suit = /obj/item/clothing/suit/armor/vest/bulletproof/frontier
	shoes = /obj/item/clothing/shoes/cowboy/black
	gloves = /obj/item/clothing/gloves/combat
	backpack_contents = list(/obj/item/melee/baton/loaded=1)
	suit_store = null

/datum/outfit/job/hos/roumain
	jobtype = /datum/job/hos/roumain
	name = "Hunter Montagne (Saint-Roumain Militia)"
	ears = /obj/item/radio/headset/headset_com
	uniform = /obj/item/clothing/under/suit/roumain
	alt_uniform = null
	shoes = /obj/item/clothing/shoes/workboots/mining
	suit = /obj/item/clothing/suit/armor/hos/roumain/montagne
	alt_suit = null
	dcoat = null
	head = /obj/item/clothing/head/HoS/cowboy/montagne
	gloves = null
	id = /obj/item/card/id/silver
	belt = null
	glasses = null
	suit_store = null
	r_pocket = null
	l_pocket = null
	duffelbag = /obj/item/storage/backpack/cultpack
	courierbag = /obj/item/storage/backpack/cultpack
	backpack = /obj/item/storage/backpack/cultpack
	satchel = /obj/item/storage/backpack/cultpack
	box = null
	implants = null
	chameleon_extras = null
	backpack_contents = list(
		/obj/item/book/manual/srmlore,
		/obj/item/stamp/chap = 1,
		/obj/item/melee/classic_baton/telescopic=1
		)

/datum/outfit/job/hos/roumain/post_equip(mob/living/carbon/human/H)
	H.faction |= list("roumain")

/datum/job/hos/roumain
	outfit = /datum/outfit/job/hos/roumain
	mind_traits = null

/datum/outfit/job/hos/syndicate/ostov
	name = "Lieutenant Commander (O.S.T.O.V.)"

	head = /obj/item/clothing/head/HoS/beret/syndicate
	ears = /obj/item/radio/headset/syndicate/alt
	mask = /obj/item/clothing/mask/gas/syndicate/voicechanger
	gloves = /obj/item/clothing/gloves/krav_maga/combatglovesplus
	l_pocket = /obj/item/ammo_box/magazine/pistolm9mm
	r_pocket = /obj/item/melee/transforming/energy/sword/saber/red
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/armor/vest
	suit_store = /obj/item/gun/ballistic/automatic/pistol/APS
	id = /obj/item/card/id/syndicate_command/lieutenant
	implants = list(/obj/item/implant/weapons_auth, /obj/item/implant/explosive/macro, /obj/item/implant/krav_maga)
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic/contractor_baton, /obj/item/ammo_box/magazine/pistolm9mm=4)

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/syndie
	courierbag = /obj/item/storage/backpack/messenger/sec

	box = /obj/item/storage/box/survival/syndie

/datum/outfit/job/hos/syndicate/ostov/post_equip(mob/living/carbon/human/H)
	H.faction = list("PlayerSyndicate")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.twinkle_names) + "-" + num2text(rand(8, 10)) // squidquest real
	I.access |= list(ACCESS_SYNDICATE)
	I.assignment = "Lieutenant Commander"
	I.update_label()


/datum/outfit/job/hos/inteq
	name = "IRMG Enforcer class One (Inteq)"

	ears = /obj/item/radio/headset/inteq/alt/captain
	uniform = /obj/item/clothing/under/syndicate/inteq
	head = /obj/item/clothing/head/beret/sec/hos/inteq
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/inteq
	belt = /obj/item/storage/belt/security/webbing/inteq
	suit = /obj/item/clothing/suit/armor/hos/inteq
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security/inteq
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	accessory = null

	courierbag = /obj/item/storage/backpack/messenger/inteq
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/ammo_box/magazine/co9mm=1, /obj/item/pda/captain)

/datum/outfit/job/hos/inteq/naked
	name = "IRMG Enforcer class One (Inteq) (Naked)"
	head = null
	mask = null
	glasses = null
	belt = null
	suit = null
	gloves = null
	suit_store = null
/datum/outfit/job/hos/inteq/naked/cardacces
	name = "Enforcer class One (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/enfco

/datum/outfit/job/hos/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = get_all_accesses()+get_inteq_acces()
	I.update_label()
