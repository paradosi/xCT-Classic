--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License

     Namespace bootstrap. Creates the AceAddon object, publishes it as the
     xCT_Plus global, and installs the L table -- a passthrough metatable that
     returns the key itself, so untranslated strings render as written.

     Loads after libs/ (LibStub must exist) and before everything else.
]]

-- TBC Compatibility shims loaded via compat.lua

local noop = function() end

local AddonName, addon = ...
addon.engine = LibStub("AceAddon-3.0"):NewAddon(AddonName, "AceConsole-3.0")

xCT_Plus = addon

addon.noop = noop

local L = {}
setmetatable(L, {
    __index = function(self, key) return key end
})

addon.L = L
