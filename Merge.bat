@echo off
del "Compiled.trigger"
for /r "C:\Users\Michael\OneDrive\Documents\GitHub\SCRcrusaderkings\Triggers" %%a in (*.txt) do type "%%a" >>"Compiled.trigger"

fart Compiled.trigger "Income" "Protoss Photon Cannon" >nul
fart Compiled.trigger "Mobilization Stage" "Flag" >nul
fart Compiled.trigger "Duchy Index ID" "Data Disc" >nul
fart Compiled.trigger "Manual Levy Switch" "Scanner Sweep" >nul
fart Compiled.trigger "Diplomacy Unit" "Protoss Forge" >nul
fart Compiled.trigger "Unit Spawn Stage" "Protoss Unused type   2" >nul
fart Compiled.trigger "Upgrade Buffer 1 (unit spawn)" "Protoss Unused type   1" >nul
fart Compiled.trigger "Pay Resources Switch" "Protoss Gateway" >nul
fart Compiled.trigger "Permanent Manpower" "Mineral Chunk (Type 1)" >nul
fart Compiled.trigger "Effective Manpower" "Mineral Field (Type 1)" >nul
fart Compiled.trigger "Manpower Regen" "Mineral Chunk (Type 2)" >nul
fart Compiled.trigger "Siege Calculations (Detect Player)" "Tank Turret type   2" >nul
fart Compiled.trigger "County/Duchy Upgrade Switch" "Kakaru (Twilight)" >nul
fart Compiled.trigger "Explosion Effect" "Terran Battlecruiser" >nul
fart Compiled.trigger "Siege Timer" "Terran Starport" >nul
fart Compiled.trigger "Duchy Unit" "Protoss Cybernetics Core" >nul
fart Compiled.trigger "Raise Local Levy" "Tom Kazansky (Wraith)" >nul
fart Compiled.trigger "Disable Levy" "Terran SCV" >nul
fart Compiled.trigger "Enable Levy" "Zerg Queen" >nul
fart Compiled.trigger "Duchy Demobilization Tracker" "Terran Science Vessel" >nul
fart Compiled.trigger "Religion" "Protoss Marker" >nul
fart Compiled.trigger "Raised Army Size" "Zerg Beacon" >nul
fart Compiled.trigger "Upgrade Buffer 2 (restore HP)" "Zerg Marker" >nul
fart Compiled.trigger "HolyWar" "Zerg Drone" >nul
start compiled.trigger