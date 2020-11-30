# Persona 4 Golden Mod Menu
**Custom scripts for Persona 4 Golden that replace the square button function with a fully featured trainer**  
![Image of the menu ingame](https://i.imgur.com/A3f5iSU.gif)  
[See this mod's thread on Gamebanana](https://gamebanana.com/gamefiles/13256)!
## Notable Features
- **Call Menu**: Using IDs, call a Field, Dungeon Floor, Battle, Event, Cutscene, BGM/SFX Track, Dungeon or Facility to load
- **Player Menu**: Change date/time, Confidant ranks, give yen/items, manage party members
- **Flags**: Toggle individual bitflags or entire ranges of them
More features will be added in the future.
## Optional Extensions
- MobileCalendar (view the calendar from anywhere!)
- QuickTravelPlus (extended quicktravel options in Yasogami High and around the town of Inaba)
- VRGameOverSkip (skips velvet room scene after game over) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13301))
- DungeonOptions (fast travel to any dungeon floor after deadline, use goho-ms, organize party) by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13356))
- SaveAnywhere by [Tupelov](https://github.com/Tupelov) ([see mod release](https://gamebanana.com/gamefiles/13318))
- FindAFriend by [AnimatedSwine37](https://gamebanana.com/members/1742760) ([see mod release](https://gamebanana.com/gamefiles/12921))
- ConsistentReaper by [TekkaGB](https://github.com/TekkaGB) ([see mod release](https://gamebanana.com/gamefiles/13301))
## Usage
You can use the [Mod Compendium](https://amicitia.github.io/post/modcompendium) to merge the [latest compiled Release](https://github.com/ShrineFox/Persona-4-Golden-Mod-Menu/releases) with other mods.
You may prefer to use [Aemulus Package Manager](https://gamebanana.com/tools/6878) instead as it supports bin merging, which increases compatibility with other mods.  
**You can easily download a [precompiled version of any combination of extensions here](https://shrinefox.com/MenuCreator)**.
### Vita
Using Henkaku and Vitashell on your Vita connsole, install the rePatch plugin. Then, create a mod.cpk containing the init_free.bin via the Mod Compendium and place it in the game's rePatch folder along with the [mod.cpk support eboot](https://amicitia.github.io/post/p4g-mod-cpk). More descriptive instructions can be found [here](https://amicitia.miraheze.org/wiki/Persona_4_Golden#Modding).
### PC
Use the [latest p4gpc.modloader](https://amicitia.github.io/post/p4g-pc-modloader) with Reloaded II to launch P4G with mods. Point the Mod Compendium or Aemulus to your P4G game directory's "mods" folder and enable "PC Mode" to output the Mod Menu in combination with any other mods you may want to install.
Alternatively, you can just extract the init_free.bin from the zip to your "mods" folder directly like so: Steam\steamapps\common\Day\mods\data_e\init_free.bin
## Compiling
1. Download the latest build of TGE's [AtlusScriptCompiler](https://ci.appveyor.com/project/TGEnigma/atlusscripttoolchain/build/artifacts) ([source](https://github.com/TGEnigma/AtlusScriptToolchain)), which you can use to compile the **.flow** and **.msg** scripts in this repository and recompile them into **.bf** format.
2. Download this [P4G Library](https://github.com/Tupelov/Persona-Library) that includes some function names used in this menu. Extract it and overwrite the contents of the AtlusScriptTools\Libraries folder.
3. Also download [TGE's PAKTools](https://github.com/TGEnigma/AtlusFileSystemLibrary/releases).
4. Edit the build.bat file with the paths to your AtlusScriptCompiler and PAKTool exe files. Name your edited copy build_local.bat.
5. Place the init_free.bin file from your copy of the game in the build/input folder (see below).
6. Run build_local.bat.

When you run the bat, the **field.bf** script will be recompiled into a new BF file including the Mod Menu (with the latest changes) and packed into a new init_free.bin.
- **field.bf** can be found in **init_free.bin** (extracted from data_e.cpk with [preappfile](https://amicitia.github.io/post/preappfile) or data00004.pac with [NR2_unpacker](https://modworkshop.net/mod/17641).)
