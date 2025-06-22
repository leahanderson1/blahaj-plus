local pinkBlahaj = table.deepcopy(data.raw["capsule"]["raw-fish"])
local transBlahaj = table.deepcopy(data.raw["capsule"]["raw-fish"])
transBlahaj.localised_name = "Trans BLÅHAJ"
transBlahaj.icon = "__blahaj-plus__/graphics/transblahaj.png"
transBlahaj.icon_size = 512
transBlahaj.name = "trans-blahaj"
transBlahaj.localised_description = "The mythical trans flag BLÅHAJ. Right click to cuddle it and gain a significant portion of your health."
transBlahaj.subgroup = "raw-resource"
transBlahaj.capsule_action = {
    type = "use-on-self",
    uses_stack = false,
    attack_parameters = {
        type = "projectile",
        ammo_category = "biological",
        activation_type = "activate",
        range = 0,
        cooldown = 180,
        ammo_type = {
            category = "capsule",
            target_type = "position",
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = {
                                amount = -75,
                                type = "physical"
                            }
                        }
                    }
                }
            }
        }
    }
}

local essenceOfShork = {
    type = "item",
    stack_size = 100,
    subgroup = "raw-resource",
    icon = "__blahaj-plus__/graphics/essenceofshork.png",
    icon_size = 256,
    name = "essence-of-blahaj",
    localised_name = "Essence of Shork",
    localised_description = "Dust made out of lost BLÅHAJs. Maybe you can use it to reconstruct one?"
}
pinkBlahaj.localised_name = "Pink BLÅHAJ"
pinkBlahaj.icon = "__blahaj-plus__/graphics/pinkblahaj/blahaj_full.png"
pinkBlahaj.name = "pink-blahaj"
pinkBlahaj.subgroup = "raw-resource"
pinkBlahaj.capsule_action = {
    type = "use-on-self",
    uses_stack = false,
    attack_parameters = {
        type = "projectile",
        ammo_category = "biological",
        activation_type = "activate",
        range = 0,
        cooldown = 180,
        ammo_type = {
            category = "capsule",
            target_type = "position",
            action = {
                type = "direct",
                action_delivery = {
                    type = "instant",
                    target_effects = {
                        {
                            type = "damage",
                            damage = {
                                amount = -50,
                                type = "physical"
                            }
                        }
                    }
                }
            }
        }
    }
}
local pinkRecipe = {
    type = "recipe",
    name = "pink-blahaj",
    localised_name = "Pink BLÅHAJ",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item", name = "raw-fish", amount = 25 }
    },
    results = { { type = "item", name = "pink-blahaj", amount = 1 } }
}
local transRecipe = {
	type = "recipe",
	name = "trans-blahaj",
	subgroup = "raw-resource",
	localised_name = "Trans BLÅHAJ",
	enabled = false,
	energy_required = 8,
	ingredients = {
		{ type = "item", name = "pink-blahaj", amount = 50 }
	},
	results = { { type = "item", name = "trans-blahaj", amount = 1 } } 
}
local blahajRecipe = {
    type = "recipe",
    name = "blahaj",
    subgroup = "raw-resource",
    localised_name = "BLÅHAJ",
    enabled = false,
    energy_required = 3,
    ingredients = {
        { type = "item", name = "essence-of-blahaj", amount = 20 }
    },
    results = { { type = "item", name = "raw-fish", amount = 1 } }
}
local essenceRecipe = {
    type = "recipe",
    localised_name = "Essence of Shork",
    enabled = false,
    category = "advanced-crafting",
    name = "essence-of-blahaj",
    energy_required = 20,
    ingredients = { { type = "fluid", name = "water", amount = 50 } },
    results = { { type = "item", name = "essence-of-blahaj", amount = 1 } }
}
local pinkBlahajTech = {
    type = "technology",
    localised_name = "Pink BLÅHAJ",
    name = "pink-blahaj",
    essential = false,
    icon_size = 512,
    icon = "__blahaj-plus__/graphics/pinkblahaj/blahaj_full.png",
    effects = { { type = "unlock-recipe", recipe = "pink-blahaj" } },
    research_trigger = { type = "mine-entity", entity = "fish" }
}
local transBlahajTech = {
	type = "technology",
	localised_name = "Trans BLÅHAJ",
	name = "trans-blahaj",
	essential = false,
	icon = "__blahaj-plus__/graphics/transblahaj.png",
	icon_size = 512,
	effects = { { type = "unlock-recipe", recipe = "trans-blahaj" } },
	prerequisites = { "automation-2", "pink-blahaj", "essence-of-blahaj" },
	unit = {
		count = 100,
		ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
		time = 45
	}
}
local essenceTech = {
    type = "technology",
    localised_name = "Essence of Shork",
    name = "essence-of-blahaj",
    icon_size = 256,
    icon = "__blahaj-plus__/graphics/essenceofshork.png",
    effects = { { type = "unlock-recipe", recipe = "essence-of-blahaj" }, { type = "unlock-recipe", recipe = "blahaj" } },
    prerequisites = { "automation-2", "pink-blahaj" },
    essential = false,
    unit = {
        count = 75,
        ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
        time = 30
    }
}
data:extend { pinkBlahaj, transBlahaj, essenceOfShork, pinkRecipe, transRecipe, essenceRecipe, blahajRecipe, pinkBlahajTech, transBlahajTech, essenceTech }
