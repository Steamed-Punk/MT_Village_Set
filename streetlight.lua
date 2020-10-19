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
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-0.3, -0.5, -0.3, 0.3, 2.5, 0.3},
   },
   collision_box = {
      type = "fixed",
      fixed = {-0.3, -0.5, -0.3, 0.3, 2.5, 0.3},
   },
	on_place = minetest.rotate_node,
   on_construct = function(pos)
      local above = {x = pos.x, y = pos.y + 2, z = pos.z}
      local top_node = minetest.get_node(above).name
      print ('top node is '..top_node)
      if top_node == 'air' then
         minetest.set_node(above,{name='mt_buildings:lamp_light'})
         print 'placing lamp light.'
      end
   end,
   on_destruct = function(pos)
      local above = {x = pos.x, y = pos.y + 2, z = pos.z}
      local top_node = minetest.get_node(above).name
      if top_node == 'mt_buildings:lamp_light' then
         minetest.remove_node(above)
      end
   end,
})

minetest.register_node('mt_buildings:lamp_light', {
   description = 'Lamp Light',
   drawtype = 'airlike',
   paramtype = 'light',
   pointable = false,
   light_source = 14,
   groups = {not_in_creative_inventory=1},
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
