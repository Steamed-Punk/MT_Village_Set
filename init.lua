-- Licenses of media (3D Meshes and textures)
-- ---------------------------------------

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2019 - 2020 Steamed_Punk steamedpunk.mt at gmail.com

-- ---------------------------------------
-- Invisible Wall & Schematics Code (Solid Mesh's)

-- Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)

-- Copyright (C) 2020 Sokomine
-- ---------------------------------------

local path = minetest.get_modpath("mt_buildings")

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- MT_Buildings


dofile(path .. "/streetlight.lua") -- Steamed_Punk
dofile(path .. "/nodes_invisible_walls.lua")
dofile(path .. "/huts.lua") -- Steamed_Punk
dofile(path .. "/well.lua") -- Steamed_Punk
dofile(path .. "/organic.lua") -- Steamed_Punk
print (S("[MOD] Huts are loaded"))
