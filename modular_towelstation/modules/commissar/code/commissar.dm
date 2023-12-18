// Der Kommissar
/obj/item/gun/ballistic/automatic/pistol/commissar
	name = "\improper Commissar"
	desc = "A German made pistol with the manufacture date stamped as being 1982."
	icon_state = "pistol"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/co9mm
	can_suppress = FALSE
	var/funnysounds = TRUE
	var/cooldown = 0
	load_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	load_empty_sound = 'sound/weapons/gun/pistol/mag_insert.ogg'
	eject_sound = 'sound/weapons/gun/pistol/mag_release.ogg'
	eject_empty_sound = 'sound/weapons/gun/pistol/mag_release.ogg'

/obj/item/gun/ballistic/automatic/pistol/commissar/equipped(mob/living/user, slot)
	..()
	if(slot == ITEM_SLOT_HANDS && funnysounds) // We do this instead of equip_sound as we only want this to play when it's wielded
		playsound(src, 'modular_towelstation/modules/commissar/sounds/pickup.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/shoot_live_shot(mob/living/user, pointblank, atom/pbtarget, message)
	. = ..()
	if(prob(50) && funnysounds)
		playsound(src, 'modular_towelstation/modules/commissar/sounds/shot.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/shoot_with_empty_chamber(mob/living/user)
	. = ..()
	if(prob(50) && funnysounds)
		playsound(src, 'modular_towelstation/modules/commissar/sounds/dry.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/insert_magazine(mob/user, obj/item/ammo_box/magazine/AM, display_message)
	. = ..()
	if(bolt_locked)
		drop_bolt(user)
		if(. && funnysounds)
			playsound(src, 'modular_towelstation/modules/commissar/sounds/magazine.ogg', 30, 0)

/obj/item/gun/ballistic/automatic/pistol/commissar/multitool_act(mob/living/user, obj/item/I)
	. = ..()
	funnysounds = !funnysounds
	to_chat(user, span_notice("You toggle [src]'s vox audio functions."))

/obj/item/gun/ballistic/automatic/pistol/commissar/AltClick(mob/user)
	if(!user.canUseTopic(src, BE_CLOSE, ismonkey(user)))
		return
	if((cooldown < world.time - 200) && funnysounds)
		user.audible_message("<font color='red' size='5'><b>DON'T TURN AROUND!</b></font>")
		playsound(src, 'modular_towelstation/modules/commissar/sounds/dontturnaround.ogg', 50, 0, 4)
		cooldown = world.time

/obj/item/gun/ballistic/automatic/pistol/commissar/examine(mob/user)
	. = ..()
	if(funnysounds)
		. += "<span class='info'>Alt-click to use \the [src] vox hailer.</span>"

/obj/item/ammo_box/magazine/co9mm
	name = "pistol magazine (9mm)"
	desc = "A 10-round double-stack magazine for standard-issue 9mm pistols. These rounds do okay damage, but struggle against armor."
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = "9mm"
	max_ammo = 10

// Ammo

/obj/item/ammo_box/magazine/co9mm/fire
	name = "pistol magazine (9mm incendiary)"
	desc = "A 10-round double-stack magazine for standard-issue 9mm pistols. These incendiary rounds deal pitiful damage, but leave flaming trails which set targets ablaze."
	ammo_type = /obj/item/ammo_casing/c9mm/fire

/obj/item/ammo_box/magazine/co9mm/hp
	name = "pistol magazine (9mm HP)"
	desc= "A 10-round double-stack magazine for standard-issue 9mm pistols. These hollow point rounds do significant damage against soft targets, but are nearly ineffective against armored ones."
	ammo_type = /obj/item/ammo_casing/c9mm/hp

/obj/item/ammo_box/magazine/co9mm/ap
	name = "pistol magazine (9mm AP)"
	desc= "A 10-round double-stack magazine for standard-issue 9mm pistols. These armor-piercing rounds are okay at piercing protective equipment, but lose some stopping power."
	ammo_type = /obj/item/ammo_casing/c9mm/ap

/obj/item/ammo_box/magazine/co9mm/rubber
	name = "pistol magazine (9mm rubber)"
	desc = "A 10-round double-stack magazine for standard-issue 9mm pistols. These rubber rounds trade lethality for a heavy impact which can incapacitate targets. Performs even worse against armor."
	ammo_type = /obj/item/ammo_casing/c9mm/rubber

/obj/item/ammo_box/magazine/co9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() == 1 ? 1 : round(ammo_count(),2)]"
