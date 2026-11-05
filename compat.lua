--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License

     COMPATIBILITY SHIMS. Loaded FIRST, before libs/ -- see include.xml.

     Fills in APIs that Classic Era and TBC Anniversary lack but the addon (or
     a vendored library) expects. Every shim is guarded so a client that
     provides the real thing keeps it.

     THE RULE THIS FILE EXISTS TO ENFORCE, AND ONCE BROKE:
     because this loads before libs/, anything defined here WINS against a
     library that installs itself only into an empty slot. Until 4.7.4 this
     file installed byte-based string.utf8* stubs, which made libs/UTF8 skip
     its real multi-byte implementations entirely -- silently corrupting every
     non-ASCII locale. Before adding a shim, check no vendored library already
     provides it. When in doubt, shim nothing.
]]

-- No C_Spell / C_Item / C_AddOns / C_CurrencyInfo / Enum.PowerType shims:
-- TBC Anniversary and Classic Era have all of them natively (checked against
-- each client's API index, 2026-11-05), so the wrappers that used to be here
-- never ran. A GetSpecializationInfo stub was removed too: nothing here used
-- it, and a global by that name on Classic misleads other addons that test
-- for it to detect Retail.

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

-- NOTE: Do not shim string.utf8* here. libs/UTF8 provides real, multi-byte-aware
-- implementations and installs them only when the slot is empty ("if not
-- string.utf8len"). Because this file loads BEFORE libs/, any stub written here
-- permanently wins and silently disables that library -- which corrupts the
-- non-ASCII locales (zhCN is shipped) that the utf8.sub/upper calls in
-- modules/combattext.lua depend on.
