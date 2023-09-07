/// Funniest shit I've ever seen
/datum/smite/pickle-ify
	name = "Pickle-ify"

/datum/smite/petrify/effect(client/user, mob/living/target)
	. = ..()

	if(!ishuman(target))
		to_chat(user, span_warning("This must be used on a human subtype."), confidential = TRUE)
		return
	var/mob/living/carbon/human/human_target = target
	human_target.petrify(statue_timer = INFINITY, save_brain = FALSE)
