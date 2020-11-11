# Persona 4 Golden Mod Menu
**Custom scripts for Persona 4 Golden that replace the square button function with a fully featured trainer**
![Image of the menu ingame](https://i.imgur.com/PmpmzQt.png)
## Notable Features
- Choose a Field, Event, BGM Track, Dungeon or Facility to load
- Toggle individual bitflags or entire ranges of them
- Change the in-game date and time
- Change your rank with any confidant
- Play the credits sequence

More features will be added in the future.
## Usage
You can use the [Mod Compendium](https://amicitia.github.io/post/modcompendium) to create modded archives containing the [latest compiled Release](https://github.com/ShrineFox/Persona-4-Golden-Mod-Menu/releases).
### Vita
Using Henkaku and Vitashell on your Vita connsole, install the rePatch plugin. Then, simply create a mod.cpk containing the init_free.bin and place it in the game's rePatch folder along with the [mod.cpk support eboot](https://amicitia.github.io/post/p4g-mod-cpk). More descriptive instructions can be found [here](https://amicitia.miraheze.org/wiki/Persona_4_Golden#Modding).
### PC
Use the [latest p4gpc.modloader](https://amicitia.github.io/post/p4g-pc-modloader) with Reloaded II to launch P4G with mods. Point the Mod Compendium to your P4G game directory's "mods" folder and enable "PC Mode" to output the Mod Menu in combination with any other mods you may want to install.
Alternatively, you can just extract the init_free.bin from the zip to your "mods" folder directly like so: Steam\steamapps\common\Day\mods\data_e\init_free.bin
## Compiling
1. Download the latest build of TGE's [AtlusScriptCompiler](https://ci.appveyor.com/project/TGEnigma/atlusscripttoolchain/build/artifacts) ([source](https://github.com/TGEnigma/AtlusScriptToolchain)), which you can use to compile the **.flow** and **.msg** scripts in this repository and recompile them into **.bf** format.
2. Download this [P4G Library](https://cdn.discordapp.com/attachments/476948840063434752/774077518826700800/P4GLibrary.7z) by Sierra which includes some function names used in this menu. Extract it and overwrite the contents of the AtlusScriptTools\Libraries folder.
3. Also download [TGE's PAKTools](https://github.com/TGEnigma/AtlusFileSystemLibrary/releases).
4. Edit the build.bat file with the paths to your AtlusScriptCompiler and PAKTool exe files. Name your edited copy build_local.bat.
5. Place the init_free.bin file from your copy of the game in the build/input folder (see below).
6. Run build_local.bat.

When you run the bat, the **field.bf** script will be recompiled into a new BF file including the Mod Menu (with the latest changes) and packed into a new init_free.bin.
- **field.bf** can be found in **init_free.bin** (extracted from data_e.cpk with [preappfile](https://amicitia.github.io/post/preappfile) or data00004.pac with [NR2_unpacker](https://modworkshop.net/mod/17641).)
