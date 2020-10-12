-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- NODES

-- well

minetest.register_node("mt_buildings:streetlight", {
  description = "Street Light",
  drawtype = "mesh",
  mesh = "streetlight.obj",
  use_texture_alpha = true,
  tiles = {"Lamp.png"},
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
  on_place = minetest.rotate_node,

	selection_box = {
		type = "fixed",
		fixed = {
				{-0.4, 1.5, -0.4, 0.4, 2.5, 0.4},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
				{-0.4, -0.5, -0.4, 0.4, 2.5, 0.4},
		},
	},
})


  -- WELL_CRAFT

  minetest.register_craft({
      output = "mt_buildings:hut01",
      recipe = {
          {'', 'group:tree', ''},
          {'','group:tree', ''},
          {'', 'group:tree', ''},
      }
  })

  minetest.register_craft({
      output = "mt_buildings:hut02",
      recipe = {
          {'', '', ''},
          {'group:tree','group:tree', 'group:tree'},
          {'', '', ''},
      }
  })

  minetest.register_craft({
      output = "mt_buildings:hut03",
      recipe = {
          {'', '', 'group:tree'},
          {'','group:tree', ''},
          {'group:tree', '', ''},
      }
  })

  minetest.register_craft({
      output = "mt_buildings:hut04",
      recipe = {
          {'group:tree', '', ''},
          {'','group:tree', ''},
          {'', '', 'group:tree'},
      }
  })