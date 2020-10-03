-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- NODES

-- HUTS

minetest.register_node("mt_buildings:hut01", {
  description = "Gun Shop",
  drawtype = "mesh",
  mesh = "hut01.obj",
  tiles = {"GunsFREE.jpg"},
  inventory_image = "GunsFREE.jpg",
  wield_image = "GunsFREE.jpg",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
  on_place = minetest.rotate_node,
    collisionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},

})

minetest.register_node("mt_buildings:hut02", {
  description = "Medic",
  drawtype = "mesh",
  mesh = "hut01.obj",
  tiles = {"MedicFREE.jpg"},
  inventory_image = "MedicFREE.jpg",
  wield_image = "MedicFREE.jpg",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
  on_place = minetest.rotate_node,
    selectionbox = {-1.0, -0.5, -1.5, 1.5, 1.5, 1.5},
    collisionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},

})

minetest.register_node("mt_buildings:hut03", {
  description = "Old Shop",
  drawtype = "mesh",
  mesh = "hut01.obj",
  tiles = {"ShopFREE.jpg"},
  inventory_image = "ShopFREE.jpg",
  wield_image = "ShopFREE.jpg",
  buildable_to = false,
  paramtype = "light",
  paramtype2 = "facedir",
  groups = {choppy=2, oddly_breakable_by_hand=2, flammable=3},
  on_place = minetest.rotate_node,
    selectionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},
    collisionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},

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
  on_place = minetest.rotate_node,
    selectionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},
    collisionbox = {-1.5, -0.5, -1.5, 1.5, 1.5, 1.5},

})

  -- TOTEM_CRAFT

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
