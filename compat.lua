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
    -- Required by libs/LibSink-2.0, which upvalues these at load time.
    C_AddOns.EnableAddOn = EnableAddOn
    C_AddOns.IsAddOnLoaded = IsAddOnLoaded
    C_AddOns.LoadAddOn = LoadAddOn
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

-- Spell school bitmasks. Some Classic clients do not expose these, and
-- config/profile.lua needs them at load time to key its per-school colours.
-- Values from FrameXML/CombatFeedback.lua. Filled in only where missing, so a
-- client that does define them keeps its own.
SCHOOL_MASK_NONE     = SCHOOL_MASK_NONE     or 0x00
SCHOOL_MASK_PHYSICAL = SCHOOL_MASK_PHYSICAL or 0x01
SCHOOL_MASK_HOLY     = SCHOOL_MASK_HOLY     or 0x02
SCHOOL_MASK_FIRE     = SCHOOL_MASK_FIRE     or 0x04
SCHOOL_MASK_NATURE   = SCHOOL_MASK_NATURE   or 0x08
SCHOOL_MASK_FROST    = SCHOOL_MASK_FROST    or 0x10
SCHOOL_MASK_SHADOW   = SCHOOL_MASK_SHADOW   or 0x20
SCHOOL_MASK_ARCANE   = SCHOOL_MASK_ARCANE   or 0x40

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

-- NOTE: Do not shim string.utf8* here. libs/UTF8 provides real, multi-byte-aware
-- implementations and installs them only when the slot is empty ("if not
-- string.utf8len"). Because this file loads BEFORE libs/, any stub written here
-- permanently wins and silently disables that library -- which corrupts the
-- non-ASCII locales (zhCN is shipped) that the utf8.sub/upper calls in
-- modules/combattext.lua depend on.
