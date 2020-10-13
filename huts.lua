-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- ---------------------------------------
-- Invisible Wall & Schematics Code (Solid Mesh's)

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2020 Sokomine
-- ---------------------------------------

-- NODES

-- HUTS


local mt_buildings_place_hut = function(pos, param2)
	-- get the position where the schematic shall be placed
	local p = {x=pos.x, y=pos.y+1, z=pos.z}
	if(param2%2 == 1) then
		p.x = p.x - 3
		p.z = p.z - 4
	else
		p.x = p.x - 4
		p.z = p.z - 3
	end
	-- all huts share the same shape and thus the same schematic
	local file_name = minetest.get_modpath("mt_buildings").."/schems/hut_shape_0_0.mts"
	-- the original hut has been built for param2 == 1; translate that to our rotation
	local rotation = tostring(90*((param2+3)%4))
	-- place the schematic, but do not replace existing nodes
	minetest.place_schematic(p, file_name, rotation, {}, false)

end


-- try to place hut and invisible walls if possible
local mt_buildings_on_place = function(itemstack, placer, pointed_thing)
	if( not(placer) or not(pointed_thing) or not(placer:is_player())) then
		return itemstack -- nothing consumed
	end
	local pname = placer:get_player_name();

	local pos  = minetest.get_pointed_thing_position( pointed_thing, under );
	local node = minetest.get_node_or_nil( pos );

	-- the node containing the hut's mesh is placed a bit higher, where it is less of an obstacle
	local target_pos = {x=pos.x, y=pos.y + 6, z=pos.z}
	local target_node = minetest.get_node_or_nil(target_pos)
	if(target_node and target_node.name ~= "air") then
		minetest.chat_send_player( pname, "There is not enough vertical space for this hut.")
		return itemstack -- nothing consumed
	end

	if(( minetest.is_protected(pos,        pname)
	  or minetest.is_protected(target_pos, pname))
	  and not(minetest.check_player_privs(pname, "protection_bypass"))) then
		minetest.chat_send_player( pname, "This area is protected.")
		return itemstack -- nothing consumed
	end
	-- determine param2
	local dir = minetest.dir_to_facedir(placer:get_look_dir())
	-- all ok - we may proceed
	-- actually place the node containing the hut
	minetest.set_node(target_pos, {name = itemstack:get_name(), param2 = dir})
	-- get the position where the schematic shall be placed
	local p = {x=pos.x, y=pos.y+1, z=pos.z}
	-- actually place the hut
	mt_buildings_place_hut(pos, dir)

	local meta = minetest.get_meta(target_pos)
	-- give the player a hint that this is the node he needs to dig in order to remove
	-- the hut
	meta:set_string("infotext","Hut support node. Dig in order to remove this hut that was placed by "..pname..". Right-click in order to fix broken walls.")

	-- consume one hut node item
	return itemstack:take_item()
end


-- manually fix holes in the wall after player has built the interior
local mt_buildings_on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
	local node = minetest.get_node(pos)
	if(not(node)) then
		return
	end
	mt_buildings_place_hut({x=pos.x, y=pos.y-5, z=pos.z}, node.param2)
end


-- It is not sufficient to remove the hut node as such. The nodes that make players collide
-- with the hut walls and roof need to be removed as well.
local mt_buildings_remove_hut = function(pos)
	local node = minetest.get_node(pos)
	if(not(node)) then
		return
	end
	-- the hut control node is sitting on top of the hut
	local p = {x=pos.x, y=pos.y-6, z=pos.z}
	local p_end = {x=p.x, y = p.y + 6, z = p.z}
	-- the hut may be rotated
	if(node.param2%2 == 1) then
		p.x = p.x - 3
		p.z = p.z - 4
		p_end.x = p_end.x + 3
		p_end.z = p_end.z + 4
	else
		p.x = p.x - 4
		p.z = p.z - 3
		p_end.x = p_end.x + 4
		p_end.z = p_end.z + 3
	end
	-- remove the wall construction nodes
	local n_pos = minetest.find_nodes_in_area(p, p_end, {"group:mt_buildings_invisible_wall"}, false)
	for _, np in ipairs(n_pos) do
		minetest.set_node(np, {name="air"})
	end
end


-- actual node registration

minetest.register_node("mt_buildings:hut01", {
  description = "Gun Shop",
  drawtype = "mesh",
  mesh = "hut01.obj",
  use_texture_alpha = true,
  tiles = {"GunsFREE.png"},
  inventory_image = "GunsFREE.png",
  wield_image = "GunsFREE.png",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},

	collisionbox = {-0.5,  0.0, -0.5, 0.5, 0.5, 0.5},
	-- place the nodes that prevent players from walking through walls
	on_place = mt_buildings_on_place,
	-- if the player broke some invisible walls by building something, he can
	-- restore those walls automaticly
	on_rightclick = mt_buildings_on_rightclick,
	-- remove said nodes again when the hut is destructed
	on_destruct = mt_buildings_remove_hut,
	-- forbid rotation with a screwdriver (because adding support for rotating
	-- the invisible wall nodes as well would be too much work for too little gain)
	on_rotate = false,
})

minetest.register_node("mt_buildings:hut02", {
  description = "Medic",
  drawtype = "mesh",
  mesh = "hut01.obj",
  use_texture_alpha = true,
  tiles = {"MedicFREE.png"},
  inventory_image = "MedicFREE.png",
  wield_image = "MedicFREE.png",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},

	collisionbox = {-0.5,  0.0, -0.5, 0.5, 0.5, 0.5},
	on_place = mt_buildings_on_place,
	on_rightclick = mt_buildings_on_rightclick,
	on_destruct = mt_buildings_remove_hut,
	on_rotate = false,
})

minetest.register_node("mt_buildings:hut03", {
  description = "Old Shop",
  drawtype = "mesh",
  mesh = "hut01.obj",
  use_texture_alpha = true,
  tiles = {"ShopFREE.png"},
  inventory_image = "ShopFREE.png",
  wield_image = "ShopFREE.png",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},

	collisionbox = {-0.5,  0.0, -0.5, 0.5, 0.5, 0.5},
	on_place = mt_buildings_on_place,
	on_rightclick = mt_buildings_on_rightclick,
	on_destruct = mt_buildings_remove_hut,
	on_rotate = false,
})

minetest.register_node("mt_buildings:hut04", {
  description = "Cottage",
  drawtype = "mesh",
  mesh = "hut01.obj",
  use_texture_alpha = true,
  tiles = {"CottageFREE.png"},
  inventory_image = "CottageFREE.png",
  wield_image = "CottageFREE.png",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},

	collisionbox = {-0.5,  0.0, -0.5, 0.5, 0.5, 0.5},
	on_place = mt_buildings_on_place,
	on_rightclick = mt_buildings_on_rightclick,
	on_destruct = mt_buildings_remove_hut,
	on_rotate = false,
})

  -- HUTS_CRAFT

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
