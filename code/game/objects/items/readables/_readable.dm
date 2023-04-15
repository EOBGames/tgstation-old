/obj/item/readable
	name = "\improper Coder's Digest"
	desc = "A fascinating magazine about a variety of programming-related issues."
	/// Flavor messages displayed to mobs reading
	var/list/remarks = list()
	/// Controls how long a mob must keep the book in his hand to actually successfully learn
	var/pages = 3
	/// Sanity, whether it's currently being read
	var/reading = FALSE
	/// The sounds played as the user's reading
	var/list/book_sounds = list(
		'sound/effects/pageturn1.ogg',
		'sound/effects/pageturn2.ogg',
		'sound/effects/pageturn3.ogg',
	)
	/// Whether this readable is used to grant something (i.e. a spell, a recipe, etc.)
	var/granter = FALSE
	/// Number of uses if this readable is a granter
	var/uses = INFINITE

/obj/item/readable/attack_self(mob/living/user)
	if(reading)
		to_chat(user, span_warning("You're already reading this!"))
		return FALSE
	if(user.is_blind())
		to_chat(user, span_warning("You are blind and can't read anything!"))
		return FALSE
	if(!isliving(user) || !user.can_read(src))
		return FALSE
	if(!can_learn(user))
		return FALSE
	if(granter == TRUE && uses <= 0)
		recoil(user)
		return FALSE

	on_reading_start(user)
	reading = TRUE
	for(var/i in 1 to pages)
		if(!turn_page(user))
			on_reading_stopped()
			reading = FALSE
			return
	if(do_after(user, 5 SECONDS, src))
		uses--
		on_reading_finished(user)
	reading = FALSE

	return TRUE

/// Called when the user starts to read
/obj/item/book/granter/proc/on_reading_start(mob/living/user)
	to_chat(user, span_notice("You start reading [name]..."))

/// Called when the reading is interrupted without finishing
/obj/item/book/granter/proc/on_reading_stopped(mob/living/user)
	to_chat(user, span_notice("You stop reading..."))

/// Called when the reading is completely finished. For granters, this is where the actual granting should happen.
/obj/item/book/granter/proc/on_reading_finished(mob/living/user)
	to_chat(user, span_notice("You finish reading [name]!"))

/// The actual "turning over of the page" flavor bit that happens while someone is reading
/obj/item/book/granter/proc/turn_page(mob/living/user)
	playsound(user, pick(book_sounds), 30, TRUE)

	if(!do_after(user, 5 SECONDS, src))
		return FALSE

	to_chat(user, span_notice("[length(remarks) ? pick(remarks) : "You keep reading..."]"))
	return TRUE
