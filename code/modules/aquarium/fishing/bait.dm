/obj/item/bait
	name = "basic fishbait"
	desc = "That's bait."
	var/bait_quality = 1 //Bait quality increases the chance of catching a fish
	var/bait_resiliance = 1 //Bait resiliance affects the chances of losing bait upon catching a fish- higher resiliance = less chance of losing it

/obj/item/bait/advanced
	name = "advanced fishbait"
	desc = "The best bait known to science."
	bait_quality = 10
	bait_resiliance = 5

/obj/item/bait/fish
	name = "bait fish"
	desc = "A little scrawny fish fit only for catching bigger, less scrawny fish."
	bait_quality = 3
	bait_resiliance = 1

/obj/item/bait/weepingworm
	name = "weepingworm"
	desc = "A little slimy worm. Named for the pungent musk it 'weeps' constantly- which makes it very useful as fish bait."
	bait_quality = 5
	bait_resiliance = 2

/obj/item/bait/chillmoth_larva
	name = "chillmoth larva"
	desc = "A little fuzzy bug. Fish go crazy for these."
	bait_quality = 5
	bait_resiliance = 2
