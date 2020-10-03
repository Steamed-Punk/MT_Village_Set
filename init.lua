-- MT_Buildings by Steamed_Punk (CC BY-NC 3.0)
local path = minetest.get_modpath("mt_buildings")

-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- MT_Buildings

dofile(path .. "/huts.lua") -- Steamed_Punk
print (S("[MOD] Huts are loaded"))
