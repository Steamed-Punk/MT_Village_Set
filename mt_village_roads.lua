-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com
-- ---------------------------------------



-- NODES

-- ROADS
-- STRAIGHT

minetest.register_node("mt_buildings:mtv_road", {
	description = "Road Straight",
	drawtype = "mesh",
	mesh = "mtv_road_straight.obj",
	tiles = {"road_straight.png"},
    use_texture_alpha = true,
  inventory_image = "road_straight.png",
  wield_image = "road_straight.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.3, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.3, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- CORNER

minetest.register_node("mt_buildings:mtv_road_corner", {
	description = "Road Corner",
	drawtype = "mesh",
	mesh = "mtv_road_corner.obj",
	tiles = {"road_corner.png"},
    use_texture_alpha = true,
  inventory_image = "road_corner.png",
  wield_image = "road_corner.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.3, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.3, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- CROSSROAD

minetest.register_node("mt_buildings:mtv_road_crossroad", {
	description = "Road Crossroad",
	drawtype = "mesh",
	mesh = "mtv_road_straight.obj",
	tiles = {"road_crossroad.png"},
    use_texture_alpha = true,
  inventory_image = "road_crossroad.png",
  wield_image = "road_crossroad.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.3, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.3, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- ROAD_EDGES
-- STRAIGHT

minetest.register_node("mt_buildings:mtv_road_edge", {
	description = "Road Edge",
	drawtype = "mesh",
	mesh = "mtv_road_edge.obj",
	tiles = {"road_edge_straight.png"},
    use_texture_alpha = true,
  inventory_image = "road_edge_straight.png",
  wield_image = "road_edge_straight.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.4, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.4, 0.5},
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
  inventory_image = "road_edge_corner_out.png",
  wield_image = "road_edge_corner_out.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.4, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.4, 0.5},
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
  inventory_image = "road_edge_corner_in.png",
  wield_image = "road_edge_corner_in.png",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = 4,
	groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
   selection_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.4, 0.5},
   },
   collision_box = {
      type = "fixed",
      fixed = {-1.5, -0.5, -1.5, 0.5, 0.4, 0.5},
   },
	on_place = minetest.rotate_node,

})

-- STREETLIGHT_CRAFT
