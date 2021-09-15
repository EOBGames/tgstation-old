import { createLanguagePerk, Species } from "./base";

const Skeleton: Species = {
  description: "Typically found inside fleshy beings, skeletons provide a \
    vital structure around which the rest of the creature can take form. \
    The average adult human has 206 bones. Bones consist of connective tissue \
    reinforced with calcium, making them tough and hard to break.",
  features: {
    good: [{
      icon: "skull-crossbones",
      name: "Undead Vigor",
      description: "Immune to most environmental hazards such as space \
        exposure or temperature. \
	    Also has no need to eat.",
	}, {
	  icon: "tint",
	  name: "Strong Bones",
	  description: "Able to heal via ingesting milk."
	}, createLanguagePerk("Calcic")],
	neutral: [{
	  icon: "broom",
	  name: "Halloween-Exclusive Species",
	  description: "This species is locked to the Halloween season. \
	  Happy Halloween!",
	}, {
	  icon: "bone",
	  name: "Pop and Lock",
	  description: "Can easily lose limbs, but can just as easily reattach them.",
	}],
	bad: [{
	  icon: "tired",
	  name: "Oof Ouch My Bones",
	  description: "Has a unique weakness to Bone Hurting Juice.",
	}, {
    icon: "briefcase-medical",
    name: "Unnatural Physique",
    description: "Cannot be healed by traditional medicine."
  }],
  },
  lore: [
    "Throughout western society, the concept of a living skeleton has frequently been seen as a personification of death, for obvious reasons. From the French classic of the Danse Macabre, to more modern interpretations such as the Dia de los Muertos, the iconography is well established in art and culture.",
    "Animated skeletons are also a popular trope of fantasy, usually as guardians of low-level dungeons or as minions to a more serious threat, such as a necromancer.",
    "As for the skeletons on the station, they're less interesting. They have no cultural nor artistic merit, they just like rattling bones."
  ],
};
  
export default Skeleton;
