﻿cd %~dp0

copy FE8_clean.gba FEU_Predestination.gba

cd "%~dp0Predestination Palettes"
echo: | ("pal2EA v2.0")

cd "%~dp0Tables"

echo: | (c2ea "%~dp0FE8_clean.gba")

cd "%~dp0Text"

echo: | (textprocess_v2 text_buildfile.txt)

cd "%~dp0Event Assembler"

Core A FE8 "-output:%~dp0FEU_Predestination.gba" "-input:%~dp0ROM Buildfile.event"

cd "%~dp0ups"

ups diff -b "%~dp0FE8_clean.gba" -m "%~dp0FEU_Predestination.gba" -o "%~dp0FEU_Predestination.ups"

pause
