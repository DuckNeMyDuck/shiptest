/datum/job/warden
	name = "Warden"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	minimal_player_age = 7
	officer = TRUE
	wiki_page = "Space_Law" //WS Edit - Wikilinks/Warning

	outfit = /datum/outfit/job/warden

	access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA)
	minimal_access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_MECH_SECURITY, ACCESS_COURT, ACCESS_WEAPONS, ACCESS_MINERAL_STOREROOM) // See /datum/job/warden/get_access()
	mind_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_WARDEN

/datum/job/warden/get_access()
	var/list/L = list()
	L = ..() | check_config_for_sec_maint()
	return L

/datum/outfit/job/warden
	name = "Warden"
	job_icon = "warden"
	jobtype = /datum/job/warden

	belt = /obj/item/pda/warden
	ears = /obj/item/radio/headset/headset_sec/alt
	uniform = /obj/item/clothing/under/rank/security/warden
	alt_uniform = /obj/item/clothing/under/rank/security/warden
	shoes = /obj/item/clothing/shoes/jackboots
	alt_suit = /obj/item/clothing/suit/armor/vest/security/warden/alt/nt
	suit = /obj/item/clothing/suit/armor/vest/security/warden/alt/nt
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security //WS Edit - Alt Uniforms
	gloves = /obj/item/clothing/gloves/color/black
	head = /obj/item/clothing/head/warden
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	suit_store = null		//WS edit - Readds tasers //SHIPTEST EDIT - removes tasers
	backpack_contents = list(/obj/item/melee/classic_baton) //WS edit - free lethals // SHIPTEST EDIT - nope

	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec
	courierbag = /obj/item/storage/backpack/messenger/sec
	box = /obj/item/storage/box/survival/security

	implants = list(/obj/item/implant/mindshield)

	chameleon_extras = /obj/item/gun/ballistic/shotgun/automatic/combat/compact

/datum/outfit/job/warden/chiefmastersergeant
	name = "Chief Master Sergeant"
	r_pocket = /obj/item/gun/ballistic/automatic/pistol/solgov
	l_pocket = /obj/item/ammo_box/magazine/pistol556mm
	chameleon_extras = null

/datum/outfit/job/warden/minutemen
	name = "Field Commander (Colonial Minutemen)"

	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/minutemen/alt
	uniform = /obj/item/clothing/under/rank/security/officer/minutemen
	accessory = /obj/item/clothing/accessory/armband
	head = /obj/item/clothing/head/cowboy/sec/minutemen
	suit = /obj/item/clothing/suit/armor/vest/bulletproof
	belt = /obj/item/storage/belt/military/minutemen
	shoes = /obj/item/clothing/shoes/combat

	l_pocket = /obj/item/flashlight/seclite
	r_pocket = /obj/item/tank/internals/emergency_oxygen/double

	box = /obj/item/storage/box/survival/engineer/radio
	backpack = /obj/item/storage/backpack
	backpack_contents = null

/datum/outfit/job/warden/minutemen/armed
	name = "Field Commander (Colonial Minutemen) (Armed)"

	suit_store = /obj/item/gun/ballistic/automatic/assault/p16/minutemen
	belt = /obj/item/storage/belt/military/minutemen/p16

	backpack_contents = list(/obj/item/melee/classic_baton=1, /obj/item/gun/ballistic/automatic/pistol/commander=1, /obj/item/restraints/handcuffs=1, /obj/item/gun/energy/e_gun/advtaser=1)

/datum/outfit/job/warden/inteq
	name = "Master At Arms (Inteq)"

	ears = /obj/item/radio/headset/inteq/alt
	uniform = /obj/item/clothing/under/syndicate/inteq
	head = /obj/item/clothing/head/beret/sec/hos/inteq
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/inteq
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/vest/alt
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security/inteq
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	suit_store = null

	courierbag = /obj/item/storage/backpack/messenger/inteq
	backpack_contents = list(/obj/item/melee/classic_baton=1, /obj/item/pda/warden)


/datum/outfit/job/warden/inteq/cardacces
	name = "Master At Arms (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/maas

/datum/outfit/job/warden/inteq/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY)
	I.update_label()

/datum/outfit/job/warden/nanotrasen
	name = "Warden (Nanotrasen)"

	ears = /obj/item/radio/headset/nanotrasen/alt
	head = /obj/item/clothing/head/warden/red
	uniform = /obj/item/clothing/under/rank/security/warden/nt
	suit = /obj/item/clothing/suit/armor/vest/security/warden/alt/nt
	alt_uniform = null
	alt_suit = null
