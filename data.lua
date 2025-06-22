local pinkBlahaj = table.deepcopy(data.raw["capsule"]["raw-fish"])
pinkBlahaj.localised_name = "Pink BLÅHAJ"
pinkBlahaj.icon = "__blahaj-plus__/graphics/pinkblahaj/blahaj_full.png"
pinkBlahaj.name = "pink-blahaj"
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
local pinkrecipe = {
	type = "recipe",
	name = "pink-blahaj",
	localised_name = "Pink BLÅHAJ",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{type = "item", name = "raw-fish", amount = 50}
	},
	results = {{type = "item", name = "pink-blahaj", amount = 1}}
}
local pinkBlahajTech = { 
	type = "technology",
	localised_name = "Pink BLÅHAJ",
	name = "pink-blahaj",
	icon_size = 512,
	icon = "__blahaj-plus__/graphics/pinkblahaj/blahaj_full.png",
	effects ={{type = "unlock-recipe", recipe = "pink-blahaj"}},
	research_trigger = {type = "mine-entity", entity = "fish"}
}
data:extend{pinkBlahaj, pinkrecipe, pinkBlahajTech}
