--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License ]]

-- TBC Compatibility shims loaded via compat.lua

local noop = function() end

local AddonName, addon = ...
addon.engine = LibStub("AceAddon-3.0"):NewAddon(AddonName, "AceConsole-3.0")

xCT_Plus = addon

addon.noop = noop
addon.IsTBC = true

local L = {}
setmetatable(L, {
    __index = function(self, key) return key end
})

addon.L = L
