--[[ xCT+ TBC Anniversary Classic
     Author: paradosi-Dreamscythe
     MIT License ]]

local ADDON_NAME, addon = ...
local spell, class, spec, alias = unpack(addon.merge_helpers)

-- Death Knight removed - not available in TBC

class("DRUID")
do
	spec(102) -- Balance
	spell(8921, 3.0)	--  Moonfire
	spell(5570, 3.0)	--  Insect Swarm
	spell(16914, 3.0)	--  Hurricane

	spec(103) -- Feral
	spell(1079, 3.0)	--  Rip
	spell(1822, 3.0)	--  Rake
	spell(22842, 3.5)	--  Frenzied Regeneration
	spell(9007, 3.0)	--  Pounce Bleed

	spec(105) -- Restoration
	spell(774, 3.5)	--  Rejuvenation
	spell(8936, 3.5)	--  Regrowth
	spell(740, 3.0)	--  Tranquility
	spell(33763, 3.0)	--  Lifebloom
end


class("HUNTER")
do
	spec(253) -- Beast Mastery
	spell(136, 3.0)	--  Mend Pet

	spec(254) -- Marksmanship
	spell(1510, 1.0)	--  Volley

	spec(255) -- Survival
	spell(1978, 3.0)	--  Serpent Sting
	spell(13812, 3.0)	--  Explosive Trap
	spell(13797, 3.0)	--  Immolation Trap
	spell(24131, 3.0)	--  Wyvern Sting
	spell(3674, 3.0)	--  Black Arrow
end


class("MAGE")
do
	spec(62) -- Arcane
	spell(7268, 1.6)	-- Arcane Missiles

	spec(63) -- Fire
	spell(2120, 3.0)	--  Flamestrike
	spell(12654, 3.0)	--  Ignite
	spell(11366, 3.0)	--  Pyroblast
	spell(44457, 3.0)	--  Living Bomb

	spec(64) -- Frost
	spell(10, 3.0)	--  Blizzard
end


class("PALADIN")
do
	spec(65) -- Holy
	spell(26573, 3.0)	--  Consecration
	spell(20473, 3.0)	--  Holy Shock

	spec(66) -- Protection
	spell(20911, 3.0)	--  Blessing of Sanctuary
	spell(20925, 3.0)	--  Holy Shield

	spec(70) -- Retribution
	spell(20424, 3.0)	--  Seals of Command
	spell(20375, 3.0)	--  Seal of Command
	spell(31803, 3.0)	--  Holy Vengeance
end


class("PRIEST")
do
	spec(256) -- Discipline
	spell(17, 3.0)	--  Power Word: Shield (absorb)

	spec(257) -- Holy
	spell(139, 3.0)	--  Renew
	spell(14914, 3.0)	--  Holy Fire
	spell(15237, 3.0)	--  Holy Nova
	spell(34861, 3.0)	--  Circle of Healing

	spec(258) -- Shadow
	spell(589, 3.0)	--  Shadow Word: Pain
	spell(2944, 3.0)	--  Devouring Plague
	spell(15290, 3.0)	--  Vampiric Embrace
	spell(15407, 3.0)	--  Mind Flay
	spell(34914, 3.0)	--  Vampiric Touch
end


class("ROGUE")
do
	spec(259) -- Assassination
	spell(703, 3.0)	--  Garrote
	spell(1943, 3.0)	--  Rupture
	spell(2818, 3.0)	--  Deadly Poison
	spell(8680, 3.0)	--  Wound Poison
	alias(27576, 5374)	--  Mutilate (MH/OH Merger)

	spec(260) -- Combat
	spell(22482, 3.0)	--  Blade Flurry

	spec(261) -- Subtlety
	spell(16511, 3.0)	--  Hemorrhage
end


class("SHAMAN")
do
	spec(262) -- Elemental
	spell(6363, 3.0)	--  Searing Bolt
	spell(8050, 3.0)	--  Flame Shock
	spell(421, 3.0)	--  Chain Lightning

	spec(263) -- Enhancement
	spell(10444, 3.0)	--  Flametongue Attack
	spell(26545, 3.0)	--  Lightning Shield
	spell(17364, 3.0)	--  Stormstrike

	spec(264) -- Restoration
	spell(5394, 3.0)    --  Healing Stream Totem
	spell(1064, 3.0)    --  Chain Heal
	spell(8004, 3.0)    --  Lesser Healing Wave
end


class("WARLOCK")
do
	spec(265) -- Affliction
	spell(172, 3.0)	--  Corruption
	spell(980, 3.0)	--  Curse of Agony
	spell(18265, 3.0)	--  Siphon Life
	spell(689, 3.0)	--  Drain Life
	spell(30108, 3.0)	--  Unstable Affliction
	spell(27243, 3.0)	--  Seed of Corruption
	spell(1120, 3.0)	--  Drain Soul

	spec(266) -- Demonology
	spell(20153, 3.0)	--  Immolation (Infernal)
	spell(603, 3.0)	--  Curse of Doom

	spec(267) -- Destruction
	spell(348, 3.0)	--  Immolate
	spell(5740, 3.0)	--  Rain of Fire
	spell(1949, 3.0)	--  Hellfire
	spell(17962, 3.0)	--  Conflagrate
	spell(30283, 3.0)	--  Shadowfury
end


class("WARRIOR")
do
	spec(71) -- Arms
	spell(772, 3.0)	--  Rend
	spell(12162, 3.0)	--  Deep Wounds
	spell(1680, 3.0)	--  Whirlwind
	spell(12294, 3.0)	--  Mortal Strike

	spec(72) -- Fury
	spell(23881, 3.0)	--  Bloodthirst
	alias(44949, 1680)	--  Whirlwind (MH/OH Merger)

	spec(73) -- Protection
	spell(6572, 3.0)	--  Revenge
	spell(30022, 3.0)	--  Devastation
end
