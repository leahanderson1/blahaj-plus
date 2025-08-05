data.raw["capsule"]["raw-fish"].localised_name = "BLÅHAJ"
data.raw["capsule"]["raw-fish"].localised_description = "A cute BLÅHAJ. Right click to cuddle with it and gain some health."

data.raw["capsule"]["raw-fish"].icon = "__blahaj-plus__/graphics/blahaj/blahaj_full.png"
data.raw["capsule"]["raw-fish"].icon_size = 512
data.raw["capsule"]["raw-fish"].capsule_action = {
  type = "use-on-self",
  uses_stack = false,
  attack_parameters = {
    type = "projectile",
    ammo_category = "biological",
    activation_type = "activate",
    range = 0,
    cooldown = 120,
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
                amount = -20,
                type = "physical"
              }
            }
          }
        }
      }
    }
  }
}

-- do not spoil the blahaj
data.raw["capsule"]["raw-fish"].spoil_result = nil
data.raw["capsule"]["raw-fish"].spoil_ticks = nil

-- change fish entity name and graphics
data.raw["fish"]["fish"].localised_name = "BLÅHAJ"
data.raw["fish"]["fish"].icon = "__blahaj-plus__/graphics/blahaj/blahaj_full.png"
data.raw["fish"]["fish"].icon_size = 512
data.raw["fish"]["fish"].pictures = {
  {
    filename = "__blahaj-plus__/graphics/blahaj/blahaj_entity.png",
    priority = "extra-high",
    width = 32,
    height = 32
  },
  { -- some mods expect there to be two fish images
    filename = "__blahaj-plus__/graphics/blahaj/blahaj_entity.png",
    priority = "extra-high",
    width = 32,
    height = 32
  }
}
data.raw["fish"]["fish"].minable.count = 1
require("laser")
local pinkBlahaj = table.deepcopy(data.raw["capsule"]["raw-fish"])
local transBlahaj = table.deepcopy(data.raw["capsule"]["raw-fish"])
local space = {
	type = "item",
	name = "spacecore",
	localised_name = "Space core",
	--fatass
	stack_size = 1,
	icon = "__blahaj-plus__/graphics/space.png",
	icon_size = 256

}
local cyberBlahaj = {
	type = "gun",
	name = "cyberhaj",
	localised_name = "Cyberhaj",
	localised_description = "The Cyberhaj. He fires bullets :3 also press space to activate him",
	icon = "__blahaj-plus__/graphics/cyberhaj.png",
	icon_size = 512,
	subgroup = "gun",
	stack_size = 1,
	attack_parameters = {
      		type = "projectile",
      		ammo_category = "beam",
      		cooldown = 1.25,
      		movement_slow_down_factor = 0.5,
     		projectile_creation_distance = 1.125,
      		range = 20,
    	}
}
local electricAmmo = {
    type = "ammo",
    name = "electric-magazine",
    localised_name = "Laser magazine",
    icon = "__blahaj-plus__/graphics/electric-magazine.png",
    subgroup = "ammo",
    magazine_size = 30,
    stack_size = 100,
    order = "a[basic-clips]-d[electric-magazine]",
    ammo_category = "beam",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__blahaj-plus__/graphics/electric-magazine.png",
          scale = 0.5,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          size = 64,
          filename = "__base__/graphics/icons/uranium-rounds-magazine-light.png",
          scale = 0.5
        }
      }
    },
    ammo_type = {
      action =
      {
        type = "direct",
	repeat_count = 10,
        action_delivery =
        {
          type = "projectile",
	  projectile = "laser-bullet-thing",
	  starting_speed = 2,
	  direction_deviation = 0,
          range_deviation = 0,
	  max_range = 20
        }
      }
    }
}
local fireCapsule = table.deepcopy(data.raw["projectile"]["slowdown-capsule"])
local fireBlahaj = table.deepcopy(data.raw["capsule"]["raw-fish"])
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
        cooldown = 120,
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
    localised_name = "Essence of shork"
}
local estrogen = {
	type = "item",
	stack_size = 100,
	subgroup = "raw-resource",
	icon = "__blahaj-plus__/graphics/estrogen.png",
	icon_size = 256,
	name = "estrogen",
	localised_name = "Estrogen"
}
pinkBlahaj.localised_name = "Pink BLÅHAJ"
pinkBlahaj.icon = "__blahaj-plus__/graphics/pinkblahaj.png"
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
fireCapsule.name = "fire-capsule"
fireCapsule.action = {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "fire-flame"
            }
	  }
          }
        }
}

fireCapsule.animation =
    {
      filename = "__blahaj-plus__/graphics/fire-capsule.png",
      draw_as_glow = true,
      frame_count = 16,
      line_length = 8,
      animation_speed = 0.250,
      width = 60,
      height = 60,
      shift = util.by_pixel(0.5, 0.5),
      priority = "high",
      scale = 0.5
}
fireBlahaj.name = "fire-blahaj"
fireBlahaj.localised_name = "Fire BLÅHAJ"
fireBlahaj.localised_description = "A legendary fire BLÅHAJ. Right click it to let it shoot a fire capsule."
fireBlahaj.icon = "__blahaj-plus__/graphics/firehaj.png"
fireBlahaj.icon_size = 512
fireBlahaj.capsule_action =
    {
      type = "throw",
      uses_stack = false,
      attack_parameters =
      {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "capsule",
        cooldown = 60,
        projectile_creation_distance = 0.6,
        range = 25,
        ammo_type =
        {
          target_type = "position",
          action =
          {
            {
              type = "direct",
              action_delivery =
              {
                type = "projectile",
                projectile = "fire-capsule",
                starting_speed = 0.3
              }
	    }
          },
        }
      }
    }
local pinkRecipe = {
    type = "recipe",
    name = "pink-blahaj",
    localised_name = "Pink BLÅHAJ",
    enabled = false,
    energy_required = 5,
    ingredients = {
        { type = "item", name = "raw-fish", amount = 5 }
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
		{ type = "item", name = "pink-blahaj", amount = 30 },
		{ type = "item", name = "essence-of-blahaj", amount = 20 }
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
    energy_required = 15,
    ingredients = { { type = "fluid", name = "water", amount = 50 } },
    results = { { type = "item", name = "essence-of-blahaj", amount = 1 } }
}
local estrogenRecipe = {
	type = "recipe",
	name = "estrogen",
	localised_name = "Estrogen",
	enabled = false,
	energy_required = 3,
	ingredients = {
		{
			type = "item",
			name = "coal",
			amount = 1
		},
		{
			type = "item",
			name = "essence-of-blahaj",
			amount = 5
		}
	},
	results = { { type = "item", name = "estrogen", amount = 1 }  }

}
local fireRecipe = {
	type = "recipe",
	name = "fire-blahaj",
	localised_name = "Fire BLÅHAJ",
	enabled = false,
	category = "advanced-crafting",
	energy_required = 10,
	ingredients = { 
		{
			type = "fluid",
			name = "crude-oil",
			amount = 50
		},
		{
			type = "item", 
			name = "essence-of-blahaj", 
			amount = 20
		},
		{
			type = "item",
			name = "grenade",
			amount = 10
		}
	},
	results = {
		{
			type = "item",
			name = "fire-blahaj",
			amount = 1
		}
	}
}
local cyberRecipe = {
    type = "recipe",
    name = "cyberhaj",
    localised_name = "Cyberhaj",
    enabled = false,
    energy_required = 10,
    ingredients = {
        { type = "item", name = "pink-blahaj", amount = 20 },
	{ type = "item", name = "advanced-circuit", amount = 1 },
	{ type = "item", name = "steel-plate", amount = 15 },
	{ type = "item", name = "engine-unit", amount = 10 },
	{ type = "item", name = "estrogen", amount = 5 }
    },
    results = { { type = "item", name = "cyberhaj", amount = 1 } }
}
local electricRecipe = {
	type = "recipe",
	name = "electric-ammo",
	localised_name = "Laser rounds magazine",
	enabled = false,
	energy_required = 3,
	ingredients = {
		{ type = "item", name = "battery", amount = 5 },
		{ type = "item", name = "steel-plate", amount = 1 },
	},
	results = { { type = "item", name = "electric-magazine", amount = 1 } }
}
local cyberTech = {
	type = "technology",
	localised_name = "Cyberhaj",
	localised_description = "The Cyberhaj. He fires bullets :3",
	name = "cyberhaj",
	essential = false,
	icon = "__blahaj-plus__/graphics/cyberhaj.png",
	icon_size = 512,
	effects = { { type = "unlock-recipe", recipe = "cyberhaj" }, { type = "unlock-recipe", recipe = "electric-ammo" } },
	prerequisites = { "battery", "special-blahaj", "laser" },
	unit = {
		count = 50,
		ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "military-science-pack", 1 }},
		time = 30
	}
}
local pinkBlahajTech = {
    type = "technology",
    localised_name = "Pink BLÅHAJ",
    localised_description = "A cute BLÅHAJ. Right click to cuddle with it and gain some health.",
    name = "pink-blahaj",
    essential = false,
    icon_size = 512,
    icon = "__blahaj-plus__/graphics/pinkblahaj.png",
    effects = { { type = "unlock-recipe", recipe = "pink-blahaj" } },
    research_trigger = { type = "mine-entity", entity = "fish" }
}
local transBlahajTech = {
	type = "technology",
	localised_name = "Trans BLÅHAJ",
	localised_description = "The mythical trans flag BLÅHAJ. Right click to cuddle it and gain a significant portion of your health.",
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
    localised_description = "Dust made out of lost BLÅHAJs. Maybe you can use it to reconstruct one?",
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
local specialTech = {
	type = "technology",
	localised_name = "Special BLÅHAJs",
	localised_description = "BLÅHAJs that have special effects tied to their usage.",
	name = "special-blahaj",
	icon = "__blahaj-plus__/graphics/specialblahaj.png",
	icon_size = 512,
	essential = false,
	prerequisites = { "automation-2", "essence-of-blahaj", "pink-blahaj", "military-science-pack", "oil-processing" },
	effects = {
		{
			type = "unlock-recipe",
		 	recipe = "fire-blahaj"
		},
		{
			type = "unlock-recipe",
			recipe = "estrogen"
		}
	},
	unit = {
		count = 50,
		ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 }, { "military-science-pack", 1 }},
		time = 30
	}
}
data:extend { space, estrogen, electricAmmo, electricRecipe, fireCapsule, pinkBlahaj, transBlahaj, fireBlahaj, essenceOfShork, fireBlahaj, cyberBlahaj, pinkRecipe, transRecipe, essenceRecipe, blahajRecipe, fireRecipe, estrogenRecipe, cyberRecipe, pinkBlahajTech, transBlahajTech, essenceTech, specialTech, cyberTech }
