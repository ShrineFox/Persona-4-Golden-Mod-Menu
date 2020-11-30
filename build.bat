set PAKPACK="path to PAKPack.exe"
set COMPILER="path to AtlusScriptCompiler.exe"
set BUILD_PATH=.\build
set INPUT_PATH=%BUILD_PATH%\input
set OUTPUT_PATH=%BUILD_PATH%\output

if not exist %BUILD_PATH% mkdir %BUILD_PATH%
if not exist %INPUT_PATH% mkdir %INPUT_PATH%
if not exist %OUTPUT_PATH% mkdir %OUTPUT_PATH%
if not exist %OUTPUT_PATH%\field mkdir %OUTPUT_PATH%\field

%PAKPACK% unpack "%INPUT_PATH%\init_free.bin"   %INPUT_PATH%\extracted

%COMPILER% .\field\field.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\field.bf" -Hook
%COMPILER% .\dungeon\dungeon.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\script\dungeon.bf" -Hook

%PAKPACK% replace "%INPUT_PATH%\init_free.bin"   field/script/field.bf   "%OUTPUT_PATH%\field\field.bf"   "%OUTPUT_PATH%\init_free.bin"

del /s /q "%INPUT_PATH%\extracted\*"
rmdir /s /q "%INPUT_PATH%\extracted"
del /s /q "%OUTPUT_PATH%\field\*"
rmdir /s /q "%OUTPUT_PATH%\field"
del "%OUTPUT_PATH%\field\field.bf"
del "%OUTPUT_PATH%\field\script\dungeon.bf"