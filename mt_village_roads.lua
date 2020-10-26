-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com
-- ---------------------------------------



-- NODES

-- ROADS NO TRACKS

-- SINGLE
minetest.register_node("mt_buildings:mtv_road_base_single", {
	description = "Road Base Single",
	drawtype = "mesh",
	mesh = "mtv_road_block_base_single.obj",
	tiles = {"road_base.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- FULL
minetest.register_node("mt_buildings:mtv_road_base_full", {
	description = "Road Base Full",
	drawtype = "mesh",
	mesh = "mtv_road_block_base_full.obj",
	tiles = {"road_base.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 1.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 1.5, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- HALF
minetest.register_node("mt_buildings:mtv_road_base_half", {
	description = "Road Base Half",
	drawtype = "mesh",
	mesh = "mtv_road_block_base_half.obj",
	tiles = {"road_base.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- BASE
minetest.register_node("mt_buildings:mtv_road_base", {
	description = "Road Base",
	drawtype = "mesh",
	mesh = "mtv_road_block_base.obj",
	tiles = {"road_base.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- RAMP BASE
minetest.register_node("mt_buildings:mtv_road_ramp_base", {
	description = "Road Base Ramp",
	drawtype = "mesh",
	mesh = "mtv_road_block_ramp.obj",
	tiles = {"road_base.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -0.5, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -0.5, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- RAMP BASE HALF
minetest.register_node("mt_buildings:mtv_road_ramp_base_half", {
	description = "Road Base Ramp Half",
	drawtype = "mesh",
	mesh = "mtv_road_block_ramp_half.obj",
	tiles = {"road_base.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})


-- ROADS TRACKS
-- STRAIGHT

minetest.register_node("mt_buildings:mtv_road", {
	description = "Road Straight",
	drawtype = "mesh",
	mesh = "mtv_road_block_base.obj",
	tiles = {"road_straight.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- CORNER

minetest.register_node("mt_buildings:mtv_road_corner", {
	description = "Road Corner",
	drawtype = "mesh",
	mesh = "mtv_road_block_base.obj",
	tiles = {"road_corner.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- CROSSROAD

minetest.register_node("mt_buildings:mtv_road_crossroad", {
	description = "Road Crossroad",
	drawtype = "mesh",
	mesh = "mtv_road_block_base.obj",
	tiles = {"road_crossroad.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.5, 0.5},
   },
	on_place = minetest.rotate_node,

})


-- RAMP STRAIGHT

minetest.register_node("mt_buildings:mtv_road_ramp_straight", {
	description = "Road Ramp",
	drawtype = "mesh",
	mesh = "mtv_road_block_ramp.obj",
	tiles = {"road_straight.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -0.5, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -0.5, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- ROAD_EDGES
-- FULL
-- STRAIGHT

minetest.register_node("mt_buildings:mtv_road_edge", {
	description = "Road Edge Straight",
	drawtype = "mesh",
	mesh = "mtv_road_edge_straight.obj",
	tiles = {"road_edge_straight.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- CORNER OUT
minetest.register_node("mt_buildings:mtv_road_edge_corner_out", {
	description = "Road Edge Corner Out",
	drawtype = "mesh",
	mesh = "mtv_road_edge_corner_out.obj",
	tiles = {"road_edge_corner_out.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- CORNER IN
minetest.register_node("mt_buildings:mtv_road_edge_corner_in", {
	description = "Road Edge Corner In",
	drawtype = "mesh",
	mesh = "mtv_road_edge_corner_in.obj",
	tiles = {"road_edge_corner_in.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1, -0.5, -1, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1, -0.5, -1, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- HALF

minetest.register_node("mt_buildings:mtv_road_edge_half", {
	description = "Road Edge Half",
	drawtype = "mesh",
	mesh = "mtv_road_edge_straight_half.obj",
	tiles = {"road_edge_straight.png"},
    use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -1, 0.5, 0, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-0.5, -0.5, -1, 0.5, 0, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- ROAD_CRAFT
