--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License

     Intercepts Blizzard's floating combat text.

     Hooks CombatText:AddMessage, releases the font string Blizzard just
     showed, and re-routes the message into xCT's General frame -- so output
     from other addons using the Blizzard FCT API is captured too. Requires
     Blizzard_CombatText, declared as RequiredDeps in the TOC.

     TBC 2.5.6 (and Classic Era by 1.15.9) moved Blizzard_CombatText to the shared
     CombatTextMixin: CombatText_AddMessage, CombatText_RemoveMessage and
     COMBAT_TEXT_TO_ANIMATE no longer exist. Hooking the old name raised an
     error at load, which also stopped x.blizzardOptions being defined and so
     broke the rest of core.lua's setup (/xct among it).
]]


local _, addon = ...
local x = addon.engine
local L = addon.L

-- Intercept Messages Sent by other Add-Ons that use CombatText:AddMessage
if CombatText and CombatText.AddMessage and CombatText.ReleaseFontString then
  hooksecurefunc(CombatText, "AddMessage", function(self, message, scrollFunction, r, g, b, displayType, isStaggered)
    if not x.db.profile.blizzardFCT.enableFloatingCombatText then
      -- AddMessage returns early, adding nothing, when its pool is empty;
      -- only take the newest entry back if it is this message.
      local active = self.activeFontStrings
      local last = active and active[#active]
      if last and last:GetText() == message then
        self:ReleaseFontString(last)
      end
      x:AddMessage("general", message, {r, g, b})
    end
  end)
end

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
