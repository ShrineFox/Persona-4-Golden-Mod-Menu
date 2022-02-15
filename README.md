# Persona 4 Golden Mod Menu
**Custom scripts for Persona 4 Golden that replace the square button function with a fully featured trainer**  
<img src="/Screenshots/modmenu.gif?raw=true">  
[See this mod's Gamebanana page](https://gamebanana.com/gamefiles/13256)! Alternatively, go to [this repository for the PSVita version](https://github.com/Amicitia/P4G-Vita-Custom-Sub-Menu) or [this one for PS2](https://github.com/Amicitia/P4-PS2-Custom-Sub-Menu).
## Notable Features
- **Call Menu**: Using IDs, call a Field, Dungeon Floor, Battle, Event, Cutscene, BGM/SFX Track, Dungeon or Facility to load
- **Player Menu**: Change date/time, Social Link ranks, give yen/items, manage party members
- **Flags**: Toggle individual bitflags or entire ranges of them
More features will continue to be added as game functions are discovered.
## Optional Extensions
- MobileCalendar (view the calendar from anywhere!)
- QuickTravelPlus (extended quicktravel options in Yasogami High and around the town of Inaba)
- IntroSkip (start the game at 4/20)
- VRGameOverSkip (skips velvet room scene after game over) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13301))
- DungeonOptions (fast travel to any dungeon floor after deadline, heal, use goho-ms, organize party, and more) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13356))
- SaveAnywhere by [Tupelov](https://github.com/Tupelov) ([see mod release](https://gamebanana.com/gamefiles/13318))
- FindAFriend by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/gamefiles/12921))
- ConsistentReaper by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13381))
- Scooter Ride Count (adds a count that shows how many times you need to ride your scooter) [rudiger__gb](https://gamebanana.com/members/1491857)
- Dungeon Text Fixes by [rudiger__gb](https://gamebanana.com/members/1491857) ([see mod release](https://gamebanana.com/mods/50907))
- Remove Events by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/mods/50924))
- Save Everyday by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/mods/138058))
## Usage (PC)
1. Follow the [Beginner's Guide to Modding Persona 4 Golden](https://gamebanana.com/tuts/13379) if you haven't already got mods setup for P4G.
2. Install this mod by dragging the [latest release](https://github.com/ShrineFox/Persona-4-Golden-Mod-Menu/releases/latest) of the mod into [Aemulus](https://github.com/TekkaGB/AemulusModManager/) or using the one click install on the [Gamebanana page](https://gamebanana.com/gamefiles/13256).
3. Build your Aemulus loadout with this mod enabled and play the game!
## Compiling the scripts yourself
You don't have to follow this section if you're merely installing the mod. This is for developers who want to make changes to the mod.  
1. Download the latest build of TGE's [AtlusScriptCompiler](https://ci.appveyor.com/project/TGEnigma/atlusscripttoolchain/build/artifacts) ([source](https://github.com/TGEnigma/AtlusScriptToolchain)), which is used to compile the **.flow** and **.msg** scripts in this repository and recompile them into **.bf** format.
2. Download [TGE's PAKTools](https://github.com/TGEnigma/AtlusFileSystemLibrary/releases) which is used to unpack BIN/PAK files.
4. Edit the build.bat file with the paths to your AtlusScriptCompiler and PAKTool exe files. Name your edited copy build_local.bat.
5. Place the following files from your unpacked copy of the game (details on unpacking the game in the Unpacking Persona 4 Golden section of the [Beginner's Guide](https://gamebanana.com/tuts/13379)) into the build/input folder:
  - field/pack/fd007_001.arc
  - field/pack/fd007_002.arc
  - field/pack/fd010_002.arc
  - field/pack/fd020_001.arc
  - field/pack/fd023_001.arc
  - field/script/lmap.bf
  - field/script/dungeon01.bf
  - all bfs in scheduler
  - init_free.bin

Note: These should be in the same folder structure in the build/input folder so field/pack/fd007_001.arc would go in build/input/field/pack/fd007_001.arc

7. Run build_local.bat.

Now in your build/output folder you will have the entire compiled mod. You can copy this directly into an Aemulus package and then build your mods with Aemulus. If you'd like you can also just change the output path in your build_local.bat directly to your Aemulus package's folder so everything is immediately ready to build in Aemulus after you run build_local.bat.
