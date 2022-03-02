set PAKPACK="path to PAKPack.exe"
set COMPILER="path to AtlusScriptCompiler.exe"
set BUILD_PATH=.\build
set INPUT_PATH=%BUILD_PATH%\input
set OUTPUT_PATH=%BUILD_PATH%\output

if exist "%OUTPUT_PATH%\data_e" rmdir /s /q "%OUTPUT_PATH%\data_e"
if exist "%OUTPUT_PATH%\tblpatches" rmdir /s /q "%OUTPUT_PATH%\tblpatches"
if not exist %BUILD_PATH% mkdir %BUILD_PATH%
if not exist %INPUT_PATH% mkdir %INPUT_PATH%
if not exist "%OUTPUT_PATH%" mkdir "%OUTPUT_PATH%"
if not exist "%OUTPUT_PATH%\data_e" mkdir "%OUTPUT_PATH%\data_e"
if not exist "%OUTPUT_PATH%\data_e\init_free" mkdir "%OUTPUT_PATH%\data_e\init_free"
if not exist "%OUTPUT_PATH%\data_e\init_free\field" mkdir "%OUTPUT_PATH%\data_e\init_free\field"
if not exist "%OUTPUT_PATH%\data_e\init_free\field\script" mkdir "%OUTPUT_PATH%\data_e\init_free\field\script"
if not exist "%OUTPUT_PATH%\data_e\field" mkdir "%OUTPUT_PATH%\data_e\field"
if not exist "%OUTPUT_PATH%\data_e\field\pack" mkdir "%OUTPUT_PATH%\data_e\field\pack"
if not exist "%OUTPUT_PATH%\data_e\field\script" mkdir "%OUTPUT_PATH%\data_e\field\script"
if not exist "%OUTPUT_PATH%\data_e\scheduler" mkdir "%OUTPUT_PATH%\data_e\scheduler"
if not exist "%OUTPUT_PATH%\tblpatches" mkdir "%OUTPUT_PATH%\tblpatches"

%PAKPACK% unpack "%INPUT_PATH%\init_free.bin"

%COMPILER% .\init_free\field.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\init_free\field\script\field.bf" -Hook
%COMPILER% .\OtherMods\ConsistentReaper.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\field\script\dungeon.bf" -Hook

Xcopy /E /I /Y .\field "%OUTPUT_PATH%\data_e\field"
copy .\OtherMods\IntroSkip.flow "%OUTPUT_PATH%\data_e\field\pack\fd020_001\IntroSkip.bf.flow"

del /s /q "%INPUT_PATH%\init_free\*"
rmdir /s /q "%INPUT_PATH%\init_free"
copy .\tblpatches\MSG_Patches.tbp "%OUTPUT_PATH%\tblpatches\MSG_Patches.tbp"