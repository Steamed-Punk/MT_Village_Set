
local wall_texture = {"default_glass.png"}

minetest.register_node("mt_buildings:wall", {
	description = "housewall",
	tiles = wall_texture,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	-- cannot be digged, does not appear in creative inventory
	-- the group "invisible_wall" is used for easier removal of these nodes when
	-- the hut node is digged
	groups = {not_in_creative_inventory = 1, mt_buildings_invisible_wall = 1},
	-- if a player tries to place a node here, this one will be replaced by it
	buildable_to = true,
	-- water shall not wash it away
	floodable = false,
	-- small enough so that it disappears inside the house wall object
	selection_box = {
		type = "fixed",
		fixed = {
			{0.5, -0.5, 0.5, -0.5, 0.5, 0.5-1/16},
		},
	},
	-- this is better with the windows beeing part of the house
	drawtype = "airlike",
	-- the collision box is slightly larger than the nodebox because the
	-- collision box is what this node exists for
	collision_box = {
		type = "fixed",
		fixed = {
			{0.5, -0.5, 0.5, -0.5, 0.5, 0.5-1/16},
		},
	},
})


-- corner node for the larger-than-one-node-house-tents
minetest.register_node("mt_buildings:wall_edge", {
	description = "housewall (edge)",
	tiles = wall_texture,
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {not_in_creative_inventory = 1, mt_buildings_invisible_wall = 1},
	buildable_to = true,
	floodable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			{0.5, -0.5, 0.5, -0.5, 0.5, 0.5-1/16},
			{0.5, -0.5, 0.5,  0.5-1/128, 0.5,-0.5},
		},
	},
	drawtype = "airlike",
	collision_box = {
		type = "fixed",
		fixed = {
			{0.5, -0.5, 0.5, -0.5, 0.5, 0.5-1/16},
			{0.5, -0.5, 0.5,  0.5-1/16, 0.5,-0.5},
		},
	},
})


minetest.register_node("mt_buildings:wall_roof", {
	description = "housewall (roof)",
	tiles = {"default_glass.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {not_in_creative_inventory = 1, mt_buildings_invisible_wall = 1},

	-- the roof nodes cannot be replaced
	buildable_to = false,
	floodable = false,
	selection_box = {
		type = "fixed",
		fixed = {
			{0.5, -0.5, 0.5, -0.5, 0.0, 0.0},
		},
	},
	-- make this node invisible
	drawtype = "airlike",
	collision_box = {
		type = "fixed",
		fixed = {
			{0.5, -0.5, 0.5, -0.5, 0.0, 0.0},
		},
	},
})
