# xCT+ TBC Classic

![xCT+ Logo](logo.png)

Highly customizable floating combat text for **TBC Classic (2.5.5)** - 2026 Anniversary Edition.

## Features

- **Customizable Frames** - Separate frames for outgoing damage, crits, incoming damage, healing, loot, class power, and procs
- **Sound Alerts** - Play sounds on critical hits, killing blows, incoming crits, and low health/mana warnings. Uses LibSharedMedia so custom sound packs work out of the box.
- **Minimap Button** - Quick access to options (left-click) and frame toggle (right-click)
- **Incoming Overheal Formatting** - Show overheal amounts separately on incoming heals with customizable prefix/postfix text
- **Sticky Crits** - Keep critical hits on screen longer for extra visibility, with configurable duration
- **Spam Merger** - Combine rapid hits from the same spell into single messages
- **Spell School Colors** - Color-code damage by school (fire, frost, shadow, etc.)
- **Icon Support** - Show spell icons alongside combat text
- **Filters** - Hide specific spells, buffs, debuffs, or items with a data-driven filter UI
- **Abbreviation** - Shorten large numbers (1.5k, 2.3M)
- **Profiles** - Save and switch between configurations

## Installation

### CurseForge
Search for "xCT+ TBC Classic" or install via your addon manager.

### Manual Install
1. Download the latest release from [GitHub Releases](https://github.com/paradosi/xCT_TBC_Classic/releases)
2. Extract the `xCT+` folder to `World of Warcraft/_anniversary_/Interface/AddOns/`
3. Type `/reload` in game

## Usage

Type `/xct` to open the configuration panel.

## About This Fork

This is a **TBC Classic port** of [xCT_Classic](https://github.com/Witnesscm/xCT_Classic) by Witnesscm.

**Changes from the original:**
- Sound Alerts system with LibSharedMedia integration
- Minimap button via LibDataBroker/LibDBIcon
- Incoming overheal formatting (mirrors outgoing healing options)
- Sticky crits with configurable extra duration
- Big Noodle Titling built-in font
- Data-driven spell filter UI
- Updated interface version for TBC Classic (2.5.5)
- Added API compatibility shims for TBC (C_Spell, C_Item, C_AddOns, C_CurrencyInfo)
- Fixed LibSink channel scanning for TBC
- Added Enum.PowerType constants for TBC
- Removed non-TBC classes, power types, and retail-only spell data

## Credits

- **Original Author:** Dandruff-Stormreaver US
- **Classic Port:** [Witnesscm/xCT_Classic](https://github.com/Witnesscm/xCT_Classic)
- **TBC Fork:** paradosi@Dreamscythe US

## License

[MIT License](LICENSE)
