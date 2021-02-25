# Persona 4 Golden Mod Menu
**Custom scripts for Persona 4 Golden that replace the square button function with a fully featured trainer**  
<img src="/Screenshots/modmenu.gif?raw=true">  
[See this mod's Gamebanana page](https://gamebanana.com/gamefiles/13256)! Alternatively, go to [this repository for the PSVita version](https://github.com/Amicitia/P4G-Vita-Custom-Sub-Menu).
## Notable Features
- **Call Menu**: Using IDs, call a Field, Dungeon Floor, Battle, Event, Cutscene, BGM/SFX Track, Dungeon or Facility to load
- **Player Menu**: Change date/time, Social Link ranks, give yen/items, manage party members
- **Flags**: Toggle individual bitflags or entire ranges of them
More features will continue to be added as game functions are discovered.
## Optional Extensions
- MobileCalendar (view the calendar from anywhere!)
- QuickTravelPlus (extended quicktravel options in Yasogami High and around the town of Inaba)
- VRGameOverSkip (skips velvet room scene after game over) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13301))
- DungeonOptions (fast travel to any dungeon floor after deadline, heal, use goho-ms, organize party) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13356))
- SaveAnywhere by [Tupelov](https://github.com/Tupelov) ([see mod release](https://gamebanana.com/gamefiles/13318))
- FindAFriend by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/gamefiles/12921))
- ConsistentReaper by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13381))
## Usage (PC)
1. Download and unzip [Aemulus Package Manager](https://gamebanana.com/tools/6878) and add the [latest compiled Release](https://github.com/ShrineFox/Persona-4-Golden-Mod-Menu/releases) to the "Packages" folder.
2. Point Aemulus to your P4G game directory's "mods" folder and build the Mod Menu in combination with any other mods you may want to install.
3. Use the [latest p4gpc.modloader](https://amicitia.github.io/post/p4g-pc-modloader) with [Reloaded II](https://github.com/Reloaded-Project/Reloaded-II/releases) to launch P4G with mods.
## Compiling
1. Download the latest build of TGE's [AtlusScriptCompiler](https://ci.appveyor.com/project/TGEnigma/atlusscripttoolchain/build/artifacts) ([source](https://github.com/TGEnigma/AtlusScriptToolchain)), which is used to compile the **.flow** and **.msg** scripts in this repository and recompile them into **.bf** format.
2. Download this [P4G Library](https://github.com/Tupelov/Persona-Library) that includes some function names used in this menu. Extract it and overwrite the contents of the **AtlusScriptTools\Libraries folder**.
3. Also download [TGE's PAKTools](https://github.com/TGEnigma/AtlusFileSystemLibrary/releases) which is used to repack BIN/PAK files.
4. Edit the build.bat file with the paths to your AtlusScriptCompiler and PAKTool exe files. Name your edited copy build_local.bat.
5. Place the **init_free.bin file from your copy of the game** in the build/input folder (see below).
6. Run build_local.bat.

When you run the bat, the **field.bf** script will be recompiled into a new BF file including the Mod Menu (with the latest changes) and packed into a new init_free.bin.
- **field.bf** can be found in **init_free.bin** (extracted from data_e.cpk with [preappfile](https://amicitia.github.io/post/preappfile) or from data00004.pac with [NR2_unpacker](https://modworkshop.net/mod/17641).)
