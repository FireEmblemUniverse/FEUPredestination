cd %~dp0

copy FE8_clean.gba FEU_Predestination.gba

cd "%~dp0Event Assembler"

Core A FE8 "-output:%~dp0FEU_Predestination.gba" "-input:%~dp0ROM Buildfile.event"

pause
