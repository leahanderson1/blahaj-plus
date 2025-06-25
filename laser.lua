local laser = {
	type = "projectile",
	name = "laser-bullet-thing",
	flags = {"not-on-map"},
      	collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
      	acceleration = 0,
      	direction_only = true,
      	action =
      	{
         type = "direct",
         action_delivery =
         {
            type = "instant",
            target_effects =
            {
               {
                  type = "damage",
                  damage = {amount = 2, type = "laser"}
               } 
            }
         }
      	},
      	animation =
      	{
         filename = "__blahaj-plus__/graphics/laser.png",
         frame_count = 1,
         width = 3,
         height = 50,
         priority = "high"
      	}
	
}
data:extend {laser}
