/obj/item/fishing_rod
	name = "old rod"
	desc = "An old and beat-up fishing rod. Use it by specific bodies of water to fish for aquatic creatures."
	var/fishing_power = 2 //This acts as a modifier on fishing probability- better rods land more fish and have better odds with no bait
	var/lava_safe = FALSE //Whether this rod is any good for fishing in lava
	var/collapsible = TRUE //Whether the rod can be collapsed for easier transport

/obj/item/fishing_rod/good
	name = "good rod"
	desc = "A new, good-quality fishing rod. Use it by specific bodies of water to fish for aquatic creatures."
	fishing_power = 4

/obj/item/fishing_rod/super
	name = "super rod"
	desc = "An awesome, high-tech fishing rod. Use it by specific bodies of water to fish for aquatic creatures."
	fishing_power = 10
	lava_safe = TRUE

/obj/item/fishing_rod/improvised
	name = "improvised rod"
	desc = "An improvised fishing rod made from a stick and some cable. Use it by specific bodies of water to fish for aquatic creatures."
	fishing_power = 1
	collapsible = FALSE

/obj/item/fishing_rod/improvised/lava_safe
	name = "lava-safe improvised rod"
	desc = "An improvised fishing rod built from lava-resistant materials. Use it by specific bodies of water (or lava) to fish for aquatic creatures."
	fishing_power = 2
	lava_safe = TRUE
