--[[
    TBC Classic Compatibility Layer
    Loads BEFORE libs to provide missing API shims
]]

-- TBC Compatibility: Provide C_Spell, C_Item, C_AddOns wrappers
if not C_Spell then
    C_Spell = {}
    function C_Spell.GetSpellName(spellID)
        local name = GetSpellInfo(spellID)
        return name
    end
    function C_Spell.GetSpellDescription(spellID)
        return GetSpellDescription and GetSpellDescription(spellID) or ""
    end
end

if not C_Item then
    C_Item = {}
    function C_Item.GetItemInfo(itemID)
        return GetItemInfo(itemID)
    end
    function C_Item.GetItemCount(itemID)
        return GetItemCount(itemID)
    end
    function C_Item.GetItemQualityColor(quality)
        return GetItemQualityColor(quality)
    end
end

if not C_AddOns then
    C_AddOns = {}
    function C_AddOns.GetAddOnMetadata(addon, field)
        return GetAddOnMetadata(addon, field)
    end
end

-- TBC Compatibility: C_CurrencyInfo
if not C_CurrencyInfo then
    C_CurrencyInfo = {}
    function C_CurrencyInfo.GetCurrencyInfoFromLink(link)
        return nil
    end
    function C_CurrencyInfo.GetCoinTextureString(money)
        local gold = floor(money / 10000)
        local silver = floor((money % 10000) / 100)
        local copper = money % 100
        local str = ""
        if gold > 0 then str = str .. gold .. "g " end
        if silver > 0 then str = str .. silver .. "s " end
        if copper > 0 then str = str .. copper .. "c" end
        return str ~= "" and str or "0c"
    end
end

-- TBC Compatibility: Enum.PowerType (TBC resources only)
if not Enum then Enum = {} end
if not Enum.PowerType then
    Enum.PowerType = {
        Mana = 0,
        Rage = 1,
        Focus = 2,
        Energy = 3,
        ComboPoints = 4,
    }
end

-- TBC Compatibility: GetSpecializationInfo (TBC has talent trees, not specs)
if not GetSpecializationInfo then
    function GetSpecializationInfo(spec)
        return nil, "Talents", nil, nil, nil
    end
end

-- TBC Compatibility: UTF8 string functions
if not string.utf8len then
    string.utf8len = string.len
    string.utf8sub = string.sub
    string.utf8reverse = string.reverse
    string.utf8upper = string.upper
    string.utf8lower = string.lower
end
