--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License ]]

local ADDON_NAME, addon = ...

-- Textures
local x = addon.engine
x.BLANK_ICON = "Interface\\AddOns\\" .. ADDON_NAME .. "\\media\\blank"
x.new = "\124TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:0:0:0:-1\124t"

-- Fonts
local LSM = LibStub("LibSharedMedia-3.0")

LSM:Register("font", "HOOGE (xCT)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\HOOGE.TTF]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "Homespun (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\homespun.ttf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "Vintage (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\VintageOne.ttf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Champagne (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\Champagne & Limousines Bold.ttf]], LSM.LOCALE_BIT_western)

LSM:Register("font", "Condensed Bold (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\OpenSans-CondBold.ttf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Condensed Light (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\OpenSans-CondLight.ttf]], LSM.LOCALE_BIT_western)
LSM:Register("font", "Condensed Light Italics (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\OpenSans-CondLightItalic.ttf]], LSM.LOCALE_BIT_western)

LSM:Register("font", "Big Noodle Titling (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\BigNoodleToo.ttf]], LSM.LOCALE_BIT_western)
