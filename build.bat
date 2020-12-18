set PAKPACK="path to PAKPack.exe"
set COMPILER="path to AtlusScriptCompiler.exe"
set BUILD_PATH=.\build
set INPUT_PATH=%BUILD_PATH%\input
set OUTPUT_PATH=%BUILD_PATH%\output

if not exist %BUILD_PATH% mkdir %BUILD_PATH%
if not exist %INPUT_PATH% mkdir %INPUT_PATH%
if not exist %OUTPUT_PATH% mkdir %OUTPUT_PATH%
if not exist %OUTPUT_PATH%\data_e mkdir %OUTPUT_PATH%\data_e
if not exist %OUTPUT_PATH%\data_e\init_free mkdir %OUTPUT_PATH%\data_e\init_free
if not exist %OUTPUT_PATH%\data_e\init_free\field mkdir %OUTPUT_PATH%\data_e\init_free\field
if not exist %OUTPUT_PATH%\data_e\init_free\field\script mkdir %OUTPUT_PATH%\data_e\init_free\field\script
if not exist %OUTPUT_PATH%\data_e\field mkdir %OUTPUT_PATH%\data_e\field
if not exist %OUTPUT_PATH%\data_e\field\pack mkdir %OUTPUT_PATH%\data_e\field\pack
if not exist %OUTPUT_PATH%\data_e\scheduler mkdir %OUTPUT_PATH%\data_e\scheduler
if not exist %OUTPUT_PATH%\tblpatches mkdir %OUTPUT_PATH%\tblpatches

%PAKPACK% unpack "%INPUT_PATH%\init_free.bin"
%PAKPACK% unpack "%INPUT_PATH%\field\pack\fd007_001.arc"
%PAKPACK% unpack "%INPUT_PATH%\field\pack\fd010_002.arc"

%COMPILER% .\init_free\field.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\init_free\field\script\field.bf" -Hook
%COMPILER% .\field\dungeon.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\field\script\dungeon.bf" -Hook
%COMPILER% .\field\f007.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\field\pack\fd007_001\f007.bf" -Hook
%COMPILER% .\field\f010.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\field\pack\fd010_002\f010.bf" -Hook
%COMPILER% .\scheduler\scheduler_04.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\data_e\scheduler\scheduler_04.bf" -Hook

del /s /q "%INPUT_PATH%\init_free\*"
rmdir /s /q "%INPUT_PATH%\init_free"
del /s /q "%INPUT_PATH%\field\pack\fd007_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\fd007_001"
del /s /q "%INPUT_PATH%\field\pack\fd010_002\*"
rmdir /s /q "%INPUT_PATH%\field\pack\fd010_002"
copy .\tblpatches\MSG_3A7F.tblpatch "%OUTPUT_PATH%\tblpatches\MSG_3A7F.tblpatch"
copy .\tblpatches\MSG_3A96.tblpatch "%OUTPUT_PATH%\tblpatches\MSG_3A96.tblpatch"
