--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License ]]


local ADDON_NAME, addon = ...
local x = addon.engine
local L = addon.L
local LSM = LibStub("LibSharedMedia-3.0");

-- Intercept Messages Sent by other Add-Ons that use CombatText_AddMessage
hooksecurefunc('CombatText_AddMessage', function(message, scrollFunction, r, g, b, displayType, isStaggered)
  if not x.db.profile.blizzardFCT.enableFloatingCombatText then
    local lastEntry = COMBAT_TEXT_TO_ANIMATE[ #COMBAT_TEXT_TO_ANIMATE ]
    CombatText_RemoveMessage(lastEntry)
    x:AddMessage("general", message, {r, g, b})
  end
end)

-- Interface - Addons (Ace3 Blizzard Options)
x.blizzardOptions = {
  name = L["|cffFFFF00Combat Text - |r|cff60A0FFPowered By |cffFF0000x|r|cff80F000CT|r+|r"],
  handler = x,
  type = 'group',
  args = {
    showConfig = {
      order = 1,
      type = 'execute',
      name = L["Show Config"],
      func = function() x:ShowConfigTool() end,
    },
  },
}
