// SAWZALL
/obj/item/sawzall
	name = "sawzall"
	desc = "Sawzall means it saws... ALL!"
	icon = 'modular_towelstation/modules/sawzall/icons/sawzall.dmi'
	icon_state = "chainsaw_off"
	lefthand_file = 'modular_towelstation/modules/sawzall/icons/sawzall_lefthand.dmi'
	righthand_file = 'modular_towelstation/modules/sawzall/icons/sawzall_righthand.dmi'
	flags_1 = CONDUCT_1
	force = 7
	var/force_on = 20
	w_class = WEIGHT_CLASS_HUGE
	throwforce = 7
	throw_speed = 2
	throw_range = 4
	demolition_mod = 3
	custom_materials = list(/datum/material/iron= SHEET_MATERIAL_AMOUNT * 4)
	attack_verb_continuous = list("saws", "tears", "lacerates", "cuts", "chops", "dices")
	attack_verb_simple = list("saw", "tear", "lacerate", "cut", "chop", "dice")
	hitsound = SFX_SWING_HIT
	sharpness = SHARP_EDGED
	actions_types = list(/datum/action/item_action/startchainsaw)
	tool_behaviour = TOOL_SAW
	toolspeed = 1.5 //Turn it on first you dork
	var/on = FALSE
	///The looping sound for our sawzall when running
	var/datum/looping_sound/sawzall/chainsaw_loop

/obj/item/sawzall/apply_fantasy_bonuses(bonus)
	. = ..()
	force_on = modify_fantasy_variable("force_on", force_on, bonus)
	if(on)
		force = force_on

/obj/item/sawzall/remove_fantasy_bonuses(bonus)
	force_on = reset_fantasy_variable("force_on", force_on)
	if(on)
		force = force_on
	return ..()

/obj/item/sawzall/Initialize(mapload)
	. = ..()
	chainsaw_loop = new(src)
	apply_components()

/obj/item/sawzall/suicide_act(mob/living/carbon/user)
	if(on)
		user.visible_message(span_suicide("[user] begins to tear [user.p_their()] head off with [src]! It looks like [user.p_theyre()] trying to commit suicide!"))
		playsound(src, 'sound/weapons/chainsawhit.ogg', 100, TRUE)
		var/obj/item/bodypart/head/myhead = user.get_bodypart(BODY_ZONE_HEAD)
		if(myhead)
			myhead.dismember()
	else
		user.visible_message(span_suicide("[user] smashes [src] into [user.p_their()] neck, destroying [user.p_their()] esophagus! It looks like [user.p_theyre()] trying to commit suicide!"))
		playsound(src, 'sound/weapons/genhit1.ogg', 100, TRUE)
	return BRUTELOSS

/obj/item/sawzall/attack_self(mob/user)
	on = !on
	to_chat(user, "As you pull the trigger of [src], [on ? "it begins to whirr." : "the chain stops moving."]")
	force = on ? force_on : initial(force)
	throwforce = on ? force_on : initial(force)
	icon_state = "chainsaw_[on ? "on" : "off"]"
	var/datum/component/butchering/butchering = src.GetComponent(/datum/component/butchering)
	butchering.butchering_enabled = on

	if(on)
		hitsound = 'sound/weapons/chainsawhit.ogg'
		chainsaw_loop.start()
	else
		hitsound = SFX_SWING_HIT
		chainsaw_loop.stop()

	toolspeed = on ? 0.5 : initial(toolspeed) //Turning it on halves the speed
	if(src == user.get_active_held_item()) //update inhands
		user.update_held_items()
	update_item_action_buttons()

/**
 * Handles adding components to the sawzall. Added in Initialize()
 *
 * Applies components to the sawzall. Added as a seperate proc to allow for
 * variance between subtypes
 */
/obj/item/sawzall/proc/apply_components()
	AddComponent(/datum/component/butchering, \
		speed = 3 SECONDS, \
		effectiveness = 100, \
		bonus_modifier = 0, \
		butcher_sound = 'sound/weapons/chainsawhit.ogg', \
		disabled = TRUE, \
	)

/datum/action/item_action/startchainsaw
	name = "Pull The Starting Cord"

/datum/armor/claymore_bone
	fire = 100
	acid = 50
