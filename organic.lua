-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- NODES


-- RED

minetest.register_node("mt_buildings:mushroom_red", {
  description = "Red Mushroom",
  drawtype = "mesh",
  mesh = "mushroom.obj",
  tiles = {"RedMushroom.png"},
  buildable_to = true,
  groups = {mushroom = 1, food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
  sounds = default.node_sound_leaves_defaults(),
  on_use = minetest.item_eat(1),
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,

	selection_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.2, 0.1},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.2, 0.1},
		},
	},
})


--BROWN

minetest.register_node("mt_buildings:mushroom_brown", {
  description = "Brown Mushroom",
  drawtype = "mesh",
  mesh = "mushroom.obj",
  tiles = {"BrownMushroom.png"},
  buildable_to = true,
  groups = {mushroom = 1, food_mushroom = 1, snappy = 3, attached_node = 1, flammable = 1},
  sounds = default.node_sound_leaves_defaults(),
  on_use = minetest.item_eat(1),
  paramtype = "light",
  sunlight_propagates = true,
  walkable = false,

	selection_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.2, 0.1},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
				{-0.1, -0.5, -0.1, 0.1, -0.2, 0.1},
		},
	},
})
