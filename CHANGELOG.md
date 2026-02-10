# xCT+ TBC Classic Changelog

## 4.6.4 — 2026-02-09

### New Features
- **Sound Alerts** — Play sounds on combat events like critical hits, killing blows, incoming crits, and low health/mana warnings. All sounds are disabled by default and can be individually toggled. Uses LibSharedMedia for sound selection (your custom sounds will appear in the dropdown). Access via xCT+ Options > Sound Alerts.
- **Minimap Button** — Added a minimap button for quick access. Left-click opens options, right-click toggles frames. Can be hidden via Frames > Show Minimap Button.

---

## 4.6.3 — 2026-02-09

### New Features
- **Incoming Overheal Formatting** — Incoming healing now supports the same rich overheal display as outgoing healing. Enable "Format Overhealing" under Incoming (Healing) > Misc to show overheal amounts separately (e.g. `+5000 (O: 1200)`). Includes options for subtracting overheal from the total, and customizable prefix/postfix text.
- **Sticky Crits** — Critical hits can now stay on screen longer for extra emphasis. Enable under Outgoing (Criticals) > Frame > Sticky Crits, with a configurable extra duration slider (1-10 seconds).
- **Big Noodle Titling Font** — Added "Big Noodle Titling (xCT+)" as a built-in font option.

### Improvements
- Simplified overheal prefix/postfix defaults to plain text instead of raw color codes.
- Improved tooltip descriptions for prefix/postfix fields with examples, defaults, and a link to the Warcraft Wiki escape sequences reference.

### Code Cleanup
- Removed unused class combo points feature (options UI, core functions, and event handlers).
- Removed all TODO/TEMP/FIXME comments and replaced placeholder descriptions with real text.
- Refactored spell filter UI generation into a data-driven `FILTER_SECTIONS` table, eliminating ~200 lines of duplicate code.

### Developer
- Added `.luarc.json` for Lua Language Server — suppresses false positives for WoW API globals in VS Code.

---

## 4.6.2 — 2026-02-07

### Fixes
- Corrected Interface version to 20505 for TBC Anniversary 2.5.5

---

## 4.6.1 — 2026-02-07

### Initial TBC Fork
- Forked from [xCT_Classic](https://github.com/Witnesscm/xCT_Classic) by Witnesscm
- Added TBC API compatibility layer (`compat.lua`)
- Removed Death Knight, Demon Hunter, Monk class references
- Removed non-TBC power types and resources
- Cleaned up retail-only spell IDs and absorb lists
- Updated spell merge list for TBC spells
- Fixed LibSink channel scanning nil error
