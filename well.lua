-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- NODES

-- well

minetest.register_node("mt_buildings:well", {
  description = "Crooked Well",
  drawtype = "mesh",
  mesh = "well.obj",
  use_texture_alpha = true,
  tiles = {"Well01.jpg"},
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
  on_place = minetest.rotate_node,

	selection_box = {
		type = "fixed",
		fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
				{-0.9, -2.5, -0.9, 0.9, -1, 0.9},
		},
	},
})


  -- WELL_CRAFT

  minetest.register_craft({
      output = "mt_buildings:hut01",
      recipe = {
          {'group:tree', 'group:tree', 'group:tree'},
          {'group:tree','group:tree', 'group:tree'},
          {'', 'group:tree', ''},
      }
  })

