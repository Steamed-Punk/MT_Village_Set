-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- NODES

-- STREETLIGHT

minetest.register_node("mt_buildings:streetlight", {
	description = "Street Light",
	drawtype = "mesh",
	mesh = "streetlight.obj",
	tiles = {"Lamp.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	walkable = false,
	light_source = 14,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
	on_place = minetest.rotate_node,

		selection_box = {
			type = "fixed",
			fixed = {
					{-0.1, 1.7, 0.8, 0.2, 2, 1.1},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
					{-0.4, -0.5, -0.4, 0.4, 2.5, 0.4},
			},
		},
	})


-- STREETLIGHT_CRAFT

minetest.register_craft({
		output = "mt_buildings:streetlight",
		recipe = {
				{'group:wood', 'group:wood',  'default:glass'},
				{'group:wood', '',  'default:torch'},
				{'group:wood', '',  ''},
		}
})
