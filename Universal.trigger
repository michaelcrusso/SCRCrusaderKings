//<Initialization//>

Trigger("All players"){
Conditions:
	Bring("Player 9", "Buildings", "Anywhere", At least, 1);

Actions:
	Display Text Message(Always Display, "\r\n\r\n\r\n\r\n\r\n\x01f------------------------\r\n\x011[Setting board...]\r\n\x01f------------------------\r\n\r\n\r\n\r\n");
	Center View("CenterView");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("All players"){
Conditions:
	Bring("Player 9", "Buildings", "Anywhere", At most, 0);
	Bring("Player 12", "Zerg Larva", "Anywhere", At most, 0);

Actions:
	Display Text Message(Always Display, "\r\n\r\n\r\n\r\n\x01f--------------------------\r\n\x011[Setup complete!]\r\n\x01f--------------------------\r\n\r\n\r\n\r\n\r\n");
	Set Score("Player 8", Set To, 1066, Custom);
	Set Switch("Choose", set);
	Wait(1500);
	Center View("Diplo Holding");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x01f------------------------------------------------\r\n\x00fIt is the year of our lord, \x0171066...\r\n\x011Select your Nation!\r\n\x01f------------------------------------------------\r\n\r\n\x016Move near a flag to see nation information. Press the Diplomatic Action button to select.\r\n\r\n\r\n");
}

//-----------------------------------------------------------------//

Trigger("All players"){
Conditions:
	Switch("Help", set);
	Switch("Start", not set);

Actions:
	Display Text Message(Always Display, "\r\n\x006TUTORIAL\r\n\r\n\x016Please select whether or not you would like the game to display\r\n\x016help messages as you complete tasks throughout the game. \r\n\x016Up is \x006OFF\x016, down is \x006ON. \x016If you're familiar\r\n\x016with the game, you may wish to disable this.\r\n\r\n\x00f[DEFAULT ON]\r\n\r\n\r\n");
	Wait(3000);
	Set Switch("Start", set);
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Always();

Actions:
	Set Alliance Status("Player 12", Ally);
	Set Alliance Status("Player 8", Ally);
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Always();

Actions:
	Set Alliance Status("\x006Kings", Ally);
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Switch("Start", not set);
	Bring("Current Player", "Zerg Overlord", "Anywhere", At least, 1);

Actions:
	Move Location("Player 1", "Zerg Overlord", "Anywhere", "PLY1 Menu");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Switch("Start", not set);
	Bring("Current Player", "Zerg Overlord", "Anywhere", At least, 1);

Actions:
	Move Location("Player 2", "Zerg Overlord", "Anywhere", "PLY2 Menu");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Always();

Actions:
	Move Unit("\x006Kings", "Terran Science Vessel", All, "Anywhere", "Can'tMoveAir");
	Move Unit("\x006Kings", "Protoss Observer", All, "Anywhere", "Can'tMoveAir");
	Preserve Trigger();
	Comment("Immobilize Air Units");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Always();

Actions:
	Mute Unit Speech();
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Switch("Start", not set);
	Bring("Current Player", "Zerg Zergling", "Menu", At least, 1);

Actions:
	Move Location("Current Player", "Zerg Zergling", "Menu", "County Loc Universal");
	Remove Unit At Location("Current Player", "Zerg Zergling", 1, "County Loc Universal");
	Create Unit with Properties("Current Player", "Zerg Overlord", 1, "County Loc Universal", 2);
	Preserve Trigger();
	Comment("Set board");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Always();

Actions:
	Play WAV("staredit\\wav\\saladinarrivesatjerusalem.ogg", 7438);
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Always();

Actions:
	Run AI Script("+Vi7");
	Run AI Script("+Vi6");
	Run AI Script("+Vi5");
	Comment("Set AI shared vision");
}

//<Set board and diplo menu//>

Trigger("All Players"){
Conditions:
	Switch("Start", not set);
	Bring("Player 9", "Terran Missile Turret", "Anywhere", At least, 1);

Actions:
	Move Location("Player 9", "Terran Missile Turret", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 9", "Terran Missile Turret", 1, "County Loc Universal");
	Create Unit with Properties("Player 8", "Terran Missile Turret", 1, "Buildings Buffer 1", 2);
	Move Unit("Player 8", "Terran Missile Turret", 1, "Buildings Buffer 1", "County Loc Universal");
	Preserve Trigger();
	Comment("Set board");
}

//-----------------------------------------------------------------//

Trigger("All Players"){
Conditions:
	Switch("Start", not set);
	Bring("Player 9", "Income", "Anywhere", At least, 1);

Actions:
	Move Location("Player 9", "Income", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 9", "Income", 1, "County Loc Universal");
	Create Unit with Properties("Player 8", "Income", 1, "Buildings Buffer 1", 2);
	Set Doodad State("Player 8", "Income", "Buildings Buffer 1", enabled);
	Move Unit("Player 8", "Income", 1, "Buildings Buffer 1", "County Loc Universal");
	Preserve Trigger();
	Comment("Set board");
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("Start", not set);
	Bring("Player 12", "Devouring One (Zergling)", "Anywhere", At least, 1);

Actions:
	Move Location("Player 12", "Devouring One (Zergling)", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 12", "Devouring One (Zergling)", 1, "County Loc Universal");
	Create Unit with Properties("Player 8", "Zerg Lurker", 1, "County Loc Universal", 2);
	Give Units to Player("Player 8", "Player 12", "Zerg Lurker", 1, "County Loc Universal");
	Preserve Trigger();
	Comment("Reset Menu Lurkers");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Switch("Start", not set);
	Bring("Player 12", "Zerg Hydralisk", "Anywhere", At least, 1);

Actions:
	Move Location("Player 12", "Zerg Hydralisk", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 12", "Zerg Hydralisk", 1, "County Loc Universal");
	Create Unit with Properties("Player 1", "Zerg Larva", 1, "County Loc Universal", 2);
	Move Location("Player 12", "Zerg Hydralisk", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 12", "Zerg Hydralisk", 1, "County Loc Universal");
	Create Unit with Properties("Player 2", "Zerg Larva", 1, "County Loc Universal", 2);
	Move Location("Player 12", "Zerg Hydralisk", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 12", "Zerg Hydralisk", 1, "County Loc Universal");
	Create Unit with Properties("Player 3", "Zerg Larva", 1, "County Loc Universal", 2);
	Move Location("Player 12", "Zerg Hydralisk", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 12", "Zerg Hydralisk", 1, "County Loc Universal");
	Create Unit with Properties("Player 4", "Zerg Larva", 1, "County Loc Universal", 2);
	Move Location("Player 12", "Zerg Hydralisk", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 12", "Zerg Hydralisk", 1, "County Loc Universal");
	Create Unit with Properties("Player 5", "Zerg Larva", 1, "County Loc Universal", 2);
	Display Text Message(Always Display, "#Replace neutral hydras");
	Comment("Reset Menu Hydras");
}

//-----------------------------------------------------------------//

Trigger("All Players"){
Conditions:
	Switch("Start", not set);
	Bring("Player 8", "Norad II (Crashed Battlecruiser)", "Anywhere", At least, 1);

Actions:
	Move Location("Player 8", "Norad II (Crashed Battlecruiser)", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 8", "Norad II (Crashed Battlecruiser)", 1, "County Loc Universal");
	Create Unit with Properties("Player 8", "Norad II (Crashed Battlecruiser)", 1, "County Loc Universal", 2);
	Give Units to Player("Player 8", "Player 12", "Norad II (Crashed Battlecruiser)", All, "County Loc Universal");
	Comment("Reset England");
}

//-----------------------------------------------------------------//

Trigger("All Players"){
Conditions:
	Switch("Start", not set);
	Bring("Player 8", "Warp Gate", "Anywhere", At least, 1);

Actions:
	Move Location("Player 8", "Warp Gate", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 8", "Warp Gate", 1, "County Loc Universal");
	Create Unit with Properties("Player 8", "Warp Gate", 1, "County Loc Universal", 2);
	Give Units to Player("Player 8", "Player 12", "Warp Gate", All, "County Loc Universal");
	Comment("Reset Scotland");
}

//-----------------------------------------------------------------//

Trigger("All Players"){
Conditions:
	Switch("Start", not set);
	Bring("Player 8", "Stasis Cell/Prison", "Anywhere", At least, 1);

Actions:
	Move Location("Player 8", "Stasis Cell/Prison", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Player 8", "Stasis Cell/Prison", 1, "County Loc Universal");
	Create Unit with Properties("Player 8", "Stasis Cell/Prison", 1, "County Loc Universal", 2);
	Give Units to Player("Player 8", "Player 12", "Stasis Cell/Prison", All, "County Loc Universal");
	Comment("Reset France");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("\x006Kings", "Zerg Larva", "Diplo", At least, 1);

Actions:
	Move Location("Player 1", "Zerg Larva", "Diplo", "Diplo 1");
	Move Location("Player 2", "Zerg Larva", "Diplo", "Diplo 2");
	Move Location("Player 3", "Zerg Larva", "Diplo", "Diplo 3");
	Move Location("Player 4", "Zerg Larva", "Diplo", "Diplo 4");
	Move Location("Player 5", "Zerg Larva", "Diplo", "Diplo 5");
	Comment("Wrap location to diplo unit");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 3"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo", At least, 1);
	Bring("Current Player", "Zerg Larva", "Diplo 3", At most, 0);

Actions:
	Move Location("Current Player", "Zerg Larva", "Diplo", "Diplo 3");
	Comment("Wrap location to diplo unit");
	Preserve Trigger();
}

//<Select year and nation//>

Trigger("\x006Kings"){
Conditions:
	Switch("Start", not set);
	Bring("\x006Kings", "Zerg Larva", "Diplo", At least, 1);
	Deaths("Current Player", "Independent Command Center", Exactly, 1);
	Switch("Choose", set);

Actions:
	Display Text Message(Always Display, "\r\n\r\n\x016Waiting on other players...\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Switch("Start", not set);
	Bring("\x006Kings", "Zerg Larva", "Diplo", At most, 0);
	Deaths("Current Player", "Independent Command Center", Exactly, 1);
	Switch("Choose", set);
	Switch("Help", not set);

Actions:
	Set Switch("Help", set);
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 1","Player 2","Player 3","Player 4","Player 5","Player 6","Player 7"){
Conditions:
	Switch("Start", set);
	Deaths("Current Player", "Independent Command Center", Exactly, 1);

Actions:
	Move Unit("Player 1", "Men", All, "Buffer Zone", "Diplo 1");
	Move Unit("Player 2", "Men", All, "Buffer Zone", "Diplo 2");
	Move Unit("Player 3", "Men", All, "Buffer Zone", "Diplo 3");
	Move Unit("Player 4", "Men", All, "Buffer Zone", "Diplo 4");
	Move Unit("Player 5", "Men", All, "Buffer Zone", "Diplo 5");
	Remove Unit At Location("Player 8", "Men", All, "Diplo");
	Display Text Message(Always Display, "\r\n\r\n\r\n\r\n\x006----------\r\n\x016START!\r\n\x006----------\r\n\r\n\r\n\r\n\r\n");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Bring("Current Player", "Zerg Lurker", "Diplo 1", At least, 1);
	Bring("Player 12", "Norad II (Crashed Battlecruiser)", "Diplo 1", At least, 1);
	Deaths("Current Player", "Independent Command Center", At most, 0);
	Switch("Choose", set);
	Score("Player 8", Custom, Exactly, 1066);
	Bring("\x006Kings", "Norad II (Crashed Battlecruiser)", "Anywhere", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Lurker", 1, "Diplo");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Set Deaths("Current Player", "Independent Command Center", Set To, 1);
	Give Units to Player("Player 8", "Current Player", "Norad II (Crashed Battlecruiser)", All, "Duchy of Bedford");
	Give Units to Player("Player 12", "Current Player", "Norad II (Crashed Battlecruiser)", All, "Diplo");
	Move Location("Current Player", "Norad II (Crashed Battlecruiser)", "Anywhere", "County Loc Universal");
	Center View("County Loc Universal");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Bedford");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Lancaster");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Cornwall");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Normandy");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Northumberland");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Norfolk");
	Set Doodad State("All Players", "Duchy", "Duchy of Bedford", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Cornwall", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Wales", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Norfolk", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Lancaster", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Northumberland", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Normandy", enabled);
	Set Deaths("Current Player", "Religion", Set To, 3);
	Set Deaths("Current Player", "Income", Set To, 27);
	Set Deaths("Current Player", "Permanent Manpower", Set To, 48);
	Set Deaths("Current Player", "Effective Manpower", Set To, 48);
	Set Deaths("Current Player", "Manpower Regen", Set To, 1);
	Comment("Choose England 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Bring("Current Player", "Zerg Lurker", "Diplo 1", At least, 1);
	Bring("Player 12", "Warp Gate", "Diplo 1", At least, 1);
	Deaths("Current Player", "Independent Command Center", At most, 0);
	Switch("Choose", set);
	Score("Player 8", Custom, Exactly, 1066);
	Bring("\x006Kings", "Warp Gate", "Anywhere", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Lurker", 1, "Diplo");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Set Deaths("Current Player", "Independent Command Center", Set To, 1);
	Give Units to Player("Player 8", "Current Player", "Warp Gate", All, "Duchy of Morway");
	Give Units to Player("Player 12", "Current Player", "Warp Gate", All, "Diplo");
	Move Location("Current Player", "Warp Gate", "Anywhere", "County Loc Universal");
	Center View("County Loc Universal");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Morway");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Galloway");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Albany");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Lothian");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Hebrides");
	Set Doodad State("Current Player", "Duchy", "Duchy of Galloway", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Albany", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Lothian", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Morway", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Hebrides", enabled);
	Set Deaths("Current Player", "Religion", Set To, 1);
	Set Deaths("Current Player", "Income", Set To, 21);
	Set Deaths("Current Player", "Permanent Manpower", Set To, 38);
	Set Deaths("Current Player", "Effective Manpower", Set To, 38);
	Set Deaths("Current Player", "Manpower Regen", Set To, 1);
	Comment("Choose Scotland 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Bring("Current Player", "Zerg Lurker", "Diplo 1", At least, 1);
	Bring("Player 12", "Stasis Cell/Prison", "Diplo 1", At least, 1);
	Deaths("Current Player", "Independent Command Center", At most, 0);
	Switch("Choose", set);
	Score("Player 8", Custom, Exactly, 1066);
	Bring("\x006Kings", "Stasis Cell/Prison", "Anywhere", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Lurker", 1, "Diplo");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Set Deaths("Current Player", "Independent Command Center", Set To, 1);
	Give Units to Player("Player 8", "Current Player", "Stasis Cell/Prison", All, "Duchy of Orleans");
	Give Units to Player("Player 12", "Current Player", "Stasis Cell/Prison", All, "Diplo");
	Move Location("Current Player", "Stasis Cell/Prison", "Anywhere", "County Loc Universal");
	Center View("County Loc Universal");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Anjou");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Orleans");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Gascogne");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Toulouse");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Auvergne");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Burgundy");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Flanders");
	Set Deaths("Current Player", "Religion", Set To, 1);
	Set Deaths("Current Player", "Income", Set To, 31);
	Set Deaths("Current Player", "Permanent Manpower", Set To, 65);
	Set Deaths("Current Player", "Effective Manpower", Set To, 65);
	Set Deaths("Current Player", "Manpower Regen", Set To, 1);
	Comment("Choose France 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Bring("Current Player", "Zerg Lurker", "Diplo 2", At least, 1);
	Bring("Player 12", "Norad II (Crashed Battlecruiser)", "Diplo 2", At least, 1);
	Deaths("Current Player", "Independent Command Center", At most, 0);
	Switch("Choose", set);
	Score("Player 8", Custom, Exactly, 1066);
	Bring("\x006Kings", "Norad II (Crashed Battlecruiser)", "Anywhere", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Lurker", 1, "Diplo");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Set Deaths("Current Player", "Independent Command Center", Set To, 1);
	Give Units to Player("Player 12", "Current Player", "Norad II (Crashed Battlecruiser)", All, "Diplo");
	Move Location("Current Player", "Norad II (Crashed Battlecruiser)", "Anywhere", "County Loc Universal");
	Center View("County Loc Universal");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Bedford");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Lancaster");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Cornwall");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Normandy");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Northumberland");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Norfolk");
	Set Doodad State("All Players", "Duchy", "Duchy of Bedford", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Cornwall", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Wales", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Norfolk", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Lancaster", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Northumberland", enabled);
	Set Doodad State("All Players", "Duchy", "Duchy of Normandy", enabled);
	Set Deaths("Current Player", "Religion", Set To, 3);
	Set Deaths("Current Player", "Income", Set To, 27);
	Set Deaths("Current Player", "Permanent Manpower", Set To, 48);
	Set Deaths("Current Player", "Effective Manpower", Set To, 48);
	Set Deaths("Current Player", "Manpower Regen", Set To, 1);
	Comment("Choose England 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Bring("Current Player", "Zerg Lurker", "Diplo 2", At least, 1);
	Bring("Player 12", "Warp Gate", "Diplo 2", At least, 1);
	Deaths("Current Player", "Independent Command Center", At most, 0);
	Switch("Choose", set);
	Score("Player 8", Custom, Exactly, 1066);
	Bring("\x006Kings", "Warp Gate", "Anywhere", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Lurker", 1, "Diplo");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Set Deaths("Current Player", "Independent Command Center", Set To, 1);
	Give Units to Player("Player 12", "Current Player", "Warp Gate", All, "Diplo");
	Move Location("Current Player", "Warp Gate", "Anywhere", "County Loc Universal");
	Center View("County Loc Universal");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Morway");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Galloway");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Albany");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Lothian");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Hebrides");
	Set Doodad State("Current Player", "Duchy", "Duchy of Galloway", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Albany", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Lothian", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Morway", enabled);
	Set Doodad State("Current Player", "Duchy", "Duchy of Hebrides", enabled);
	Set Deaths("Current Player", "Religion", Set To, 1);
	Set Deaths("Current Player", "Income", Set To, 21);
	Set Deaths("Current Player", "Permanent Manpower", Set To, 38);
	Set Deaths("Current Player", "Effective Manpower", Set To, 38);
	Set Deaths("Current Player", "Manpower Regen", Set To, 1);
	Comment("Choose Scotland 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Bring("Current Player", "Zerg Lurker", "Diplo 2", At least, 1);
	Bring("Player 12", "Stasis Cell/Prison", "Diplo 2", At least, 1);
	Deaths("Current Player", "Independent Command Center", At most, 0);
	Switch("Choose", set);
	Score("Player 8", Custom, Exactly, 1066);
	Bring("\x006Kings", "Stasis Cell/Prison", "Anywhere", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Lurker", 1, "Diplo");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Set Deaths("Current Player", "Independent Command Center", Set To, 1);
	Give Units to Player("Player 12", "Current Player", "Stasis Cell/Prison", All, "Diplo");
	Move Location("Current Player", "Stasis Cell/Prison", "Anywhere", "County Loc Universal");
	Center View("County Loc Universal");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Brittany");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Anjou");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Orleans");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Gascogne");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Toulouse");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Auvergne");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Burgundy");
	Give Units to Player("Player 8", "Current Player", "Buildings", All, "Duchy of Flanders");
	Set Deaths("Current Player", "Religion", Set To, 1);
	Set Deaths("Current Player", "Income", Set To, 31);
	Set Deaths("Current Player", "Permanent Manpower", Set To, 65);
	Set Deaths("Current Player", "Effective Manpower", Set To, 65);
	Set Deaths("Current Player", "Manpower Regen", Set To, 1);
	Comment("Choose France 1066");
}

//<Nation Selection Information//>

Trigger("Player 1"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 1", At least, 1);
	Bring("Player 12", "Stasis Cell/Prison", "Diplo 1", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Orleans");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x01cThe Kingdom of France\r\n\x019Capital: \x00fParis\r\n\x019Duchies: \x0166\r\n\x019Starting Counties: \x01012\r\n\x019Crown Strength: \x006Low\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x00fNone\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("France Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 1", At least, 1);
	Bring("Player 12", "Norad II (Crashed Battlecruiser)", "Diplo 1", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Bedford");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x008The Kingdom of England\r\n\x019Capital: \x00fMiddlesex\r\n\x019Duchies: \x0166\r\n\x019Starting Counties: \x0169\r\n\x019Crown Strength: \x011Medium\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x01cKingdom of Norway\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("England Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 1", At least, 1);
	Bring("Player 12", "Warp Gate", "Diplo 1", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Albany");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x008The Kingdom of Scotland\r\n\x019Capital: \x00fScone\r\n\x019Duchies: \x0115\r\n\x019Starting Counties: \x0116\r\n\x019Crown Strength: \x011Medium\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x01cKingdom of Norway\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("England Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 2", At least, 1);
	Bring("Player 12", "Stasis Cell/Prison", "Diplo 2", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Orleans");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x01cThe Kingdom of France\r\n\x019Capital: \x00fParis\r\n\x019Duchies: \x0166\r\n\x019Starting Counties: \x01012\r\n\x019Crown Strength: \x006Low\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x00fNone\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("France Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 2", At least, 1);
	Bring("Player 12", "Norad II (Crashed Battlecruiser)", "Diplo 2", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Bedford");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x008The Kingdom of England\r\n\x019Capital: \x00fMiddlesex\r\n\x019Duchies: \x0166\r\n\x019Starting Counties: \x0169\r\n\x019Crown Strength: \x011Medium\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x01cKingdom of Norway\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("England Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 2", At least, 1);
	Bring("Player 12", "Warp Gate", "Diplo 2", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Albany");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x008The Kingdom of Scotland\r\n\x019Capital: \x00fScone\r\n\x019Duchies: \x0115\r\n\x019Starting Counties: \x0116\r\n\x019Crown Strength: \x011Medium\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x01cKingdom of Norway\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("England Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 3"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 3", At least, 1);
	Bring("Player 12", "Stasis Cell/Prison", "Diplo 3", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Orleans");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x01cThe Kingdom of France\r\n\x019Capital: \x00fParis\r\n\x019Duchies: \x0166\r\n\x019Starting Counties: \x01012\r\n\x019Crown Strength: \x006Low\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x00fNone\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("France Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 3"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 3", At least, 1);
	Bring("Player 12", "Norad II (Crashed Battlecruiser)", "Diplo 3", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Bedford");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x008The Kingdom of England\r\n\x019Capital: \x00fMiddlesex\r\n\x019Duchies: \x0166\r\n\x019Starting Counties: \x0169\r\n\x019Crown Strength: \x011Medium\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x01cKingdom of Norway\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("England Info, 1066");
}

//-----------------------------------------------------------------//

Trigger("Player 3"){
Conditions:
	Bring("Current Player", "Zerg Larva", "Diplo 3", At least, 1);
	Bring("Player 12", "Warp Gate", "Diplo 3", At least, 1);
	Switch("Choose", set);
	Switch("Start", not set);

Actions:
	Minimap Ping("Duchy of Albany");
	Display Text Message(Always Display, "\r\n\r\n\r\n\x008The Kingdom of Scotland\r\n\x019Capital: \x00fScone\r\n\x019Duchies: \x0115\r\n\x019Starting Counties: \x0116\r\n\x019Crown Strength: \x011Medium\r\n\x019Religion: \x016Catholicism\r\n\x019At War: \x01cKingdom of Norway\r\n\r\n");
	Wait(1500);
	Preserve Trigger();
	Comment("England Info, 1066");
}

//<Diplomacy Menu//>

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "HolyWar", "Diplo", At least, 1);
	Bring("Current Player", "Warp Gate", "Diplo", At most, 0);
	Bring("All Players", "Warp Gate", "Diplo 1", At least, 1);
	Switch("Start", set);
	Switch("1 vs Comp", not set);

Actions:
	Move Location("Current Player", "HolyWar", "Diplo", "Diplo 1");
	Remove Unit At Location("Current Player", "HolyWar", 1, "Diplo 1");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "Diplo 1");
	Center View("Diplo 1");
	Set Alliance Status("Player 8", Enemy);
	Set Switch("1 vs Comp", set);
	Set Deaths("Player 1", "Diplomacy", Set to, 3);
	Set Deaths("Player 1", "Warp Gate", Set to, 3);
	Play WAV("staredit\\wav\\wardeclared.ogg", 0);
	Play WAV("staredit\\wav\\warhorn.ogg", 0);
	Display Text Message(Always Display, "PLAYER 1 has declared a HOLY WAR for Scotland!");
	Preserve Trigger();
	Comment("Declare war on Scotland");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "HolyWar", "Diplo", At least, 1);
	Bring("All Players", "Buildings", "Diplo 1", At most, 0);
	Switch("Start", set);

Actions:
	Move Location("Current Player", "HolyWar", "Diplo", "Diplo 1");
	Remove Unit At Location("Current Player", "HolyWar", 1, "Diplo 1");
	Create Unit with Properties("Current Player", "Zerg Larva", 1, "Buffer Zone", 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "Diplo 1");
	Display Text Message(Always Display, "You have not selected a target country!");
	Preserve Trigger();
	Comment("No country targeted Player 1");
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", At most, 0);
	Deaths("Foes", "Warp Gate", Exactly, 3);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);

Actions:
	Create Unit with Properties("Player 8", "Protoss Zealot", 6, "Buffer Zone", 1);
	Create Unit with Properties("Player 8", "Zerg Zergling", 12, "Buffer Zone", 1);
	Create Unit with Properties("Player 8", "Terran Ghost", 10, "Buffer Zone", 1);
	Move Unit("Player 8", "Men", All, "Buffer Zone", "Duchy of Morway");
	Set Invincibility("Player 8", "Men", "Duchy of Morway", disabled);
	Set Deaths("Current Player", "Flag", Add, 1);
	Comment("Spawn units in Scotland");
	Preserve Trigger();
}

//<Computer AI//>

Trigger("Player 8", "\x006Kings"){
Conditions:
	Commands the Most At("Men", "Empire of Britannia");
	Switch("1 vs Comp", set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);

Actions:
	Order("Player 8", "Men", "Empire of Britannia", "Duchy of Northumberland", attack);
	Wait(3000);
	Display Text Message(Always Display, "Aggressive AI");
	Comment("Aggressive AI");
	Preserve Trigger();
}

//-----------------------------------------------------------------//
	
Trigger("Player 8", "\x006Kings"){
Conditions:
	Command the Least At("Men", "Empire of Britannia");
	Switch("1 vs Comp", set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);

Actions:
	Order("Player 8", "Men", "Empire of Britannia", "Duchy of Lothian", move);
	Wait(3000);
	Display Text Message(Always Display, "Defensive AI");
	Comment("Defensive AI");
	Preserve Trigger();
}

//<War/alliance status//>

Trigger("Player 8"){
Conditions:
	Switch("1 vs Comp", set);

Actions:
	Set Alliance Status("Player 1", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("2 vs Comp", set);

Actions:
	Set Alliance Status("Player 2", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("3 vs Comp", set);

Actions:
	Set Alliance Status("Player 3", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("4 vs Comp", set);

Actions:
	Set Alliance Status("Player 4", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("5 vs Comp", set);

Actions:
	Set Alliance Status("Player 5", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("6 vs Comp", set);

Actions:
	Set Alliance Status("Player 6", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 8"){
Conditions:
	Switch("7 vs Comp", set);

Actions:
	Set Alliance Status("Player 7", Enemy);
	Comment("Computer declares war on Player");
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Switch("1 vs 2", set);

Actions:
	Set Alliance Status("Player 2", Enemy);
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Switch("1 vs 2", set);

Actions:
	Set Alliance Status("Player 1", Enemy);
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Switch("2 vs 1", set);

Actions:
	Set Alliance Status("Player 2", Enemy);
	Preserve Trigger();
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Switch("2 vs 1", set);

Actions:
	Set Alliance Status("Player 1", Enemy);
	Preserve Trigger();
}

//<Income//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 20);
	Accumulate("Current Player", At most, 0, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 20);
	Set Resources("Current Player", Add, 20, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 20);
	Preserve Trigger();
	Comment("Accelerated x20, Convert number of counties into ore, no debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 10);
	Accumulate("Current Player", At most, 0, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 10);
	Set Resources("Current Player", Add, 10, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 10);
	Preserve Trigger();
	Comment("Accelerated x10, Convert number of counties into ore, no debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 5);
	Accumulate("Current Player", At most, 0, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 5);
	Set Resources("Current Player", Add, 5, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 5);
	Preserve Trigger();
	Comment("Accelerated x5, Convert number of counties into ore, no debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 1);
	Accumulate("Current Player", At most, 0, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 1);
	Set Resources("Current Player", Add, 1, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 1);
	Preserve Trigger();
	Comment("Convert number of counties into ore, no debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 20);
	Accumulate("Current Player", At least, 20, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 20);
	Set Resources("Current Player", Subtract, 20, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 20);
	Preserve Trigger();
	Comment("Accelerated x20, Convert number of counties into ore, pay debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 10);
	Accumulate("Current Player", At least, 10, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 10);
	Set Resources("Current Player", Subtract, 10, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 10);
	Preserve Trigger();
	Comment("Accelerated x10, Convert number of counties into ore, pay debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 5);
	Accumulate("Current Player", At least, 5, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 5);
	Set Resources("Current Player", Subtract, 5, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 5);
	Preserve Trigger();
	Comment("Convert number of counties into ore, pay debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 1);
	Deaths("Current Player", "Income", at least, 1);
	Accumulate("Current Player", At least, 1, gas);

Actions:
	Set Deaths("Current Player", "Income", Subtract, 1);
	Set Resources("Current Player", Subtract, 1, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 1);
	Preserve Trigger();
	Comment("Convert number of counties into ore, pay debt, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", Exactly, 1);
	Deaths("Current Player", "Income", Exactly, 0);

Actions:
	Set Deaths("Current Player", "Pay Resources Switch", Add, 1);
	Play WAV("staredit\\wav\\money_in2.ogg", 0);
	Preserve Trigger();
	Comment("When county development hits zero, restore counties from buffer");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 2);
	Deaths("Current Player", "Protoss Nexus", at least, 1);

Actions:
	Set Deaths("Current Player", "Protoss Nexus", Subtract, 1);
	Set Deaths("Current Player", "Income", Add, 1);
	Preserve Trigger();
	Comment("Restore counties from buffer until buffer hits zero");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 2);
	Deaths("Current Player", "Protoss Nexus", Exactly, 0);

Actions:
	Set Deaths("Current Player", "Pay Resources Switch", Set to, 3);
	Preserve Trigger();
	Comment("Move on to expenses");
}

//<Expenses//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At most, 0);

Actions:
	Set Deaths("Current Player", "Pay Resources Switch", Set to, 0);
	Preserve Trigger();
	Comment("Levies not raised, skip expenses and reset timer");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 20);
	Accumulate("Current Player", At least, 20, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 20);
	Set Resources("Current Player", Subtract, 20, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 20);
	Preserve Trigger();
	Comment("Accelerated x20, Convert army size into ore and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 10);
	Accumulate("Current Player", At least, 10, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 10);
	Set Resources("Current Player", Subtract, 10, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 10);
	Preserve Trigger();
	Comment("Accelerated x10, Convert army size into ore and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 5);
	Accumulate("Current Player", At least, 5, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 5);
	Set Resources("Current Player", Subtract, 5, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 5);
	Preserve Trigger();
	Comment("Accelerated x5, Convert army size into ore and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 1);
	Set Resources("Current Player", Subtract, 1, ore);
	Set Deaths("Current Player", "Protoss Nexus", Add, 1);
	Preserve Trigger();
	Comment("Convert army size into ore and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 20);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 20);
	Set Resources("Current Player", Add, 20, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 20);
	Preserve Trigger();
	Comment("Accelerated x20, Convert army size into debt, if no cash, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 10);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 10);
	Set Resources("Current Player", Add, 10, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 10);
	Preserve Trigger();
	Comment("Accelerated x10, Convert army size into debt, if no cash, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 5);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 5);
	Set Resources("Current Player", Add, 5, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 5);
	Preserve Trigger();
	Comment("Accelerated x5, Convert army size into debt, if no cash, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 3);
	Deaths("Current Player", "Zerg Beacon", At least, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Set Deaths("Current Player", "Zerg Beacon", Subtract, 1);
	Set Resources("Current Player", Add, 1, gas);
	Set Deaths("Current Player", "Protoss Nexus", Add, 1);
	Preserve Trigger();
	Comment("Convert army size into debt, if no cash, and add to buffer (Nexus)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", Exactly, 3);
	Deaths("Current Player", "Zerg Beacon", Exactly, 0);

Actions:
	Set Deaths("Current Player", "Pay Resources Switch", Add, 1);
	Preserve Trigger();
	Comment("When army size hits zero, restore army size from buffer");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 4);
	Deaths("Current Player", "Protoss Nexus", at least, 1);

Actions:
	Set Deaths("Current Player", "Protoss Nexus", Subtract, 1);
	Set Deaths("Current Player", "Zerg Beacon", Add, 1);
	Preserve Trigger();
	Comment("Restore army size from buffer until buffer hits zero");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 4);
	Deaths("Current Player", "Protoss Nexus", at least, 10);

Actions:
	Set Deaths("Current Player", "Protoss Nexus", Subtract, 10);
	Set Deaths("Current Player", "Zerg Beacon", Add, 10);
	Preserve Trigger();
	Comment("Accelerated, Restore army size from buffer until buffer hits zero");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 4);
	Deaths("Current Player", "Protoss Nexus", at most, 9);
	Deaths("Current Player", "Protoss Nexus", at least, 5);

Actions:
	Set Deaths("Current Player", "Protoss Nexus", Subtract, 5);
	Set Deaths("Current Player", "Zerg Beacon", Add, 5);
	Preserve Trigger();
	Comment("Accelerated, Restore army size from buffer until buffer hits zero");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Pay Resources Switch", exactly, 4);
	Deaths("Current Player", "Protoss Nexus", Exactly, 0);

Actions:
	Set Deaths("Current Player", "Pay Resources Switch", Set to, 0);
	Preserve Trigger();
	Comment("Reset timer");
}

//<Holding development upgrades//>

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "Protoss Carrier", "Anywhere", Exactly, 1);
	Bring("Current Player", "Protoss Carrier", "County Low Ground", At most, 0);
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 0);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "County Loc Universal");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Display Text Message(Always Display, "Upgrade Detected");
	Preserve Trigger();
	Comment("Initialize Upgrade #1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "Protoss Carrier", "County Low Ground", At most, 0);
	Bring("All Players", "Income", "County Loc Universal", At most, 0);
	Bring("All Players", "Pay Resources Switch", "County Loc Universal", At most, 0);
	Bring("All Players", "Protoss Nexus", "County Loc Universal", At most, 0);
	Bring("All Players", "Protoss Fleet Beacon", "County Loc Universal", At most, 0);
	Bring("All Players", "Protoss Observatory", "County Loc Universal", At most, 0);
	Bring("All Players", "Terran Missile Turret", "County Loc Universal", At most, 0);
	Bring("All Players", "Protoss Citadel of Adun", "County Loc Universal", At most, 0);
	Bring("All Players", "Protoss Arbiter Tribunal", "County Loc Universal", At most, 0);
	Bring("All Players", "Protoss Robotics Support Bay", "County Loc Universal", At most, 0);
	Bring("All Players", "HolyWar", "County Loc Universal", At most, 0);
	Bring("Current Player", "Duchy", "County Loc Universal", At most, 0);
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);

Actions:
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "County Loc Universal");
	Display Text Message(Always Display, "\x011You must construct a pylon directly adjacent a County or Duchy...");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Preserve Trigger();
	Comment("County Detect Failure #2, Reset");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Bedford", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Bedford", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 1);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Bedford");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Cornwall", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Cornwall", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 2);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Cornwall");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Wales", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Wales", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 3);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Wales");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Lancaster", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Lancaster", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 4);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Lancaster");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Norfolk", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Norfolk", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 5);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Norfolk");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Northumberland", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Northumberland", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 6);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Northumberland");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Lothian", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Lothian", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 7);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Lothian");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Albany", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Albany", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 8);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Albany");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Galloway", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Galloway", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 9);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Galloway");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Hebrides", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Hebrides", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);


Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 10);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Hebrides");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Morway", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Morway", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 11);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Morway");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Ulster", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Ulster", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 12);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Ulster");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Connacht", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Connacht", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 13);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Connacht");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Munster", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Munster", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 14);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Munster");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Protoss Carrier", "Duchy of Normandy", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Duchy", "Duchy of Normandy", Exactly, 1);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Devouring One (Zergling)", 1, "Duchy Upgrades", 2);
	Center View("Duchy Upgrades");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 15);
	Display Text Message(Always Display, "Duchy Upgrade Initiated, Index Normandy");
	Preserve Trigger();
	Comment("Set index ID, move to duchy upgrade");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Militia INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Militia Training Grounds INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Militia INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Militia Training Grounds INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Militia INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Militia Training Grounds INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Militia INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Militia Training Grounds INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 4);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Militia INFO, Level 5");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Militia Training Grounds INFO, Level 5");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Castle INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Castle INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Castle INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Castle INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Castle INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Castle INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Castle INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Castle INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Barracks INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Guard Barracks INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Barracks INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Guard Barracks INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Barracks INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Guard Barracks INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Barracks INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Guard Barracks INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 4);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Barracks INFO, Level 5");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Guard Barracks INFO, Level 5");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Stables INFO, base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Stables INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Stables INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Stables INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Stables INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Stables INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Stables INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Stables INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Cancel INFO");
	Wait(1500);
	Preserve Trigger();
	Comment("Cancel Upgrade INFO");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Militia Hall UPGRADED to Level 2!");
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Set Deaths("Current Player", "Permanent Manpower", Add, 2);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL2 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL2 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Militia Hall UPGRADED to Level 3!");
	Set Deaths("Current Player", "Effective Manpower", Add, 3);
	Set Deaths("Current Player", "Permanent Manpower", Add, 3);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL3 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL3 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Militia Hall UPGRADED to Level 4!");
	Set Deaths("Current Player", "Effective Manpower", Add, 5);
	Set Deaths("Current Player", "Permanent Manpower", Add, 5);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL4 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL4 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Militia Hall UPGRADED to Level 5!");
	Set Deaths("Current Player", "Effective Manpower", Add, 6);
	Set Deaths("Current Player", "Permanent Manpower", Add, 6);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL5 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Militia Training Grounds Upgrade LVL5 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 4);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Move Unit("Current Player", "Men", All, "Duchy Left", "Duchy Information");
	Display Text Message(Always Display, "Militia Training Grounds is already at maximum level");
	Preserve Trigger();
	Comment("Militia Training Grounds Max Level");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Castle UPGRADED to Level 2!");
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Castle Upgrade LVL2 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Castle upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Castle Upgrade LVL2 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Castle UPGRADED to Level 2!");
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Castle Upgrade LVL3 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Castle upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Castle Upgrade LVL3 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Castle UPGRADED to Level 2!");
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Castle Upgrade LVL4 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Bunker", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Castle upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Castle Upgrade LVL4 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Guard Barracks UPGRADED to Level 2!");
	Set Deaths("Current Player", "Effective Manpower", Add, 1);
	Set Deaths("Current Player", "Permanent Manpower", Add, 1);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL2 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Guard Barracks upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL2 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Guard Barracks UPGRADED to Level 3!");
	Set Deaths("Current Player", "Effective Manpower", Add, 3);
	Set Deaths("Current Player", "Permanent Manpower", Add, 3);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL3 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Guard Barracks upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL3 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Guard Barracks UPGRADED to Level 4!");
	Set Deaths("Current Player", "Effective Manpower", Add, 5);
	Set Deaths("Current Player", "Permanent Manpower", Add, 5);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL4 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Guard Barracks upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL4 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Guard Barracks UPGRADED to Level 5!");
	Set Deaths("Current Player", "Effective Manpower", Add, 7);
	Set Deaths("Current Player", "Permanent Manpower", Add, 7);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL5 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 3);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Left");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Guard Barracks upgrade failed, insufficient resources");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Guard Barracks Upgrade LVL5 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 4);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Left", Exactly, 1);

Actions:
	Move Unit("Current Player", "Men", All, "Duchy Left", "Duchy Information");
	Display Text Message(Always Display, "Guard Barracks is already at maximum level");
	Preserve Trigger();
	Comment("Guard Barracks Max Level");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Stables UPGRADED to Level 2!");
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Stables Upgrade LVL2 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Stables UPGRADE failed, insufficient resources!");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Stables Upgrade LVL2 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Stables UPGRADED to Level 3!");
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Stables Upgrade LVL3 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Stables UPGRADE failed, insufficient resources!");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Stables Upgrade LVL3 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Set Resources("Current Player", Subtract, 0, ore);
	Display Text Message(Always Display, "Stables UPGRADED to Level 3!");
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Stables Upgrade LVL4 Success");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 2);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Bottom Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);
	Accumulate("Current Player", At most, 0, ore);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Stables UPGRADE failed, insufficient resources!");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Stables Upgrade LVL4 Failure");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", At least, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Center", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 0);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Move Location("Current Player", "Protoss Carrier", "Anywhere", "CenterView");
	Center View("CenterView");
	Remove Unit At Location("Current Player", "Devouring One (Zergling)", 1, "Duchy Right");
	Remove Unit At Location("Current Player", "Protoss Carrier", 1, "CenterView");
	Display Text Message(Always Display, "Duchy Upgrade cancelled");
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Add, 1);
	Preserve Trigger();
	Comment("Cancel Upgrade");
}

//<Enable/Disable Levy//>

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "Terran SCV", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Terran SCV", "Anywhere", "County Loc Universal");
	Preserve Trigger();
	Comment("Disable Duchy Levies");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "Terran SCV", "County Loc Universal", At least, 1);
	Bring("Player 12", "Terran SCV", "County Loc Universal", At most, 0);

Actions:
	Give Units to Player("Current Player", "Player 12", "Terran SCV", 1, "County Loc Universal");
	Display Text Message(Always Display, "\x01f------------------------------------------------------------\r\n\x011Levies in this holding have been disabled.\r\n\x01f------------------------------------------------------------");
	Preserve Trigger();
	Comment("Duchy Levy Disabled");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "Terran SCV", "County Loc Universal", At least, 1);
	Bring("Player 12", "Terran SCV", "County Loc Universal", At least, 1);

Actions:
	Remove Unit At Location("Player 12", "Terran SCV", 1, "County Loc Universal");
	Remove Unit At Location("Current Player", "Terran SCV", 1, "County Loc Universal");
	Display Text Message(Always Display, "\x01f----------------------------------------------------------------------\r\n\x011You have already disabled levies in this holding.\r\n\x01f----------------------------------------------------------------------");
	Preserve Trigger();
	Comment("Duchy Levy Already Disabled");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("Current Player", "Enable Levy", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Enable Levy", "Anywhere", "County Loc Universal");
	Preserve Trigger();
	Comment("Re-enable Levy Holdings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("\x006Kings", "Enable Levy", "County Loc Universal", At least, 1);
	Bring("Player 12", "Terran SCV", "County Loc Universal", At least, 1);

Actions:
	Remove Unit At Location("Current Player", "Enable Levy", 1, "County Loc Universal");
	Remove Unit At Location("Player 12", "Terran SCV", 1, "County Loc Universal");
	Display Text Message(Always Display, "\x01f-----------------------------------------------\r\n\x011Levies re-enabled in this holding.\r\n\x01f-----------------------------------------------");
	Preserve Trigger();
	Comment("Duchy Levy Re-Enabled");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Bring("\x006Kings", "Enable Levy", "County Loc Universal", At least, 1);
	Bring("Player 12", "Terran SCV", "County Loc Universal", At most, 0);

Actions:
	Remove Unit At Location("Current Player", "Zerg Larva", 1, "County Loc Universal");
	Display Text Message(Always Display, "\x01f---------------------------------------------------------------------\r\n\x011You have already enabled levies in this holding.\r\n\x01f---------------------------------------------------------------------");
	Preserve Trigger();
	Comment("Duchy Levy Already Disabled");
}

//<Mobilize levies init//>

Trigger("Player 1"){
Conditions:
	Switch("Start", set);
	Bring("Current Player", "Zerg Overlord", "PLY1 Menu", Exactly, 0);
	Deaths("Current Player", "Mobilization Stage", At most, 0);

Actions:
	Move Unit("Current Player", "Zerg Overlord", 1, "Anywhere", "PLY1 Menu");
	Display Text Message(Always Display, "\x01f-------------------------------\r\n\x011Calling upon our men...\r\n\x01f-------------------------------");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Play WAV("staredit\\wav\\levy.ogg", 0);
	Preserve Trigger();
	Comment("Raise Levy Initialize");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Switch("Start", set);
	Bring("Current Player", "Zerg Overlord", "PLY2 Menu", Exactly, 0);
	Deaths("Current Player", "Mobilization Stage", At most, 0);

Actions:
	Move Unit("Current Player", "Zerg Overlord", 1, "Anywhere", "PLY2 Menu");
	Display Text Message(Always Display, "\x01f-------------------------------\r\n\x011Calling upon our men...\r\n\x01f-------------------------------");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Play WAV("staredit\\wav\\levy.ogg", 0);
	Preserve Trigger();
	Comment("Raise Levy Initialize");
}

//<Mobilization, auto//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy", "Anywhere", At least, 1);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Move Location("Current Player", "Duchy", "Anywhere", "County Loc Universal");
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Go to Duchy Detect");
	Preserve Trigger();
	Comment("Select New Duchy, go to Detect trigger");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 4);
	Bring("Current Player", "Income", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Income", "Anywhere", "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Select new town");
	Preserve Trigger();
	Comment("Select New Town");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 5);
	Bring("Current Player", "Income", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", At most, 0);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", At most, 0);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Income", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Zerg Beacon", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Display Text Message(Always Display, "Cycle to new town");
	Preserve Trigger();
	Comment("Spawn Units, Cycle to New Town");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 5);
	Bring("Current Player", "Income", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", At most, 0);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", At most, 0);
	Deaths("Current Player", "Effective Manpower", At most, 1);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Income", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Insufficient manpower, skip town spawn");
	Preserve Trigger();
	Comment("Insufficient manpower, skip spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 5);
	Bring("Current Player", "Income", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", At most, 0);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Income", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Spawn units disabled, cycle to new town");
	Preserve Trigger();
	Comment("Spawn Units Disabled, Cycle to New County");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 5);
	Bring("Current Player", "Income", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", At most, 0);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Income", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Levy already raised, cycle to new Town");
	Preserve Trigger();
	Comment("Levy Already Raised, Cycle to New Town");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 4);
	Bring("Current Player", "Income", "Anywhere", At most, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 6);
	Display Text Message(Always Display, "Town levies raised, Initiate town return");
	Preserve Trigger();
	Comment("Return Towns to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 6);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Duchy Demobilization Tracker", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal");
	Give Units to Player("Player 12", "Current Player", "Income", 1, "County Loc Universal");
	Display Text Message(Always Display, "Return town P12 -> player");
	Preserve Trigger();
	Comment("Return Towns to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 6);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 7);
	Display Text Message(Always Display, "Town levy complete, go to castles");
	Preserve Trigger();
	Comment("Town Levy Complete, Go to Castles");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 7);
	Bring("Current Player", "Terran Missile Turret", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Terran Missile Turret", "Anywhere", "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Select new castle");
	Preserve Trigger();
	Comment("Select New Castle");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 8);
	Bring("Current Player", "Terran Missile Turret", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", At most, 0);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", At most, 0);
	Deaths("Current Player", "Effective Manpower", At least, 3);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Protoss Zealot", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Terran Missile Turret", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Zerg Beacon", Add, 3);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 3);
	Display Text Message(Always Display, "Cycle to new castle");
	Preserve Trigger();
	Comment("Spawn Units, Cycle to New Castle");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 8);
	Bring("Current Player", "Terran Missile Turret", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", At most, 0);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", At most, 0);
	Deaths("Current Player", "Effective Manpower", At most, 2);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Terran Missile Turret", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Insufficient manpower, skip castle spawn");
	Preserve Trigger();
	Comment("Insufficient manpower, skip spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 8);
	Bring("Current Player", "Terran Missile Turret", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", At most, 0);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Terran Missile Turret", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Spawn units disabled, cycle to new castle");
	Preserve Trigger();
	Comment("Spawn Units Disabled, Cycle to New Castle");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 8);
	Bring("Current Player", "Terran Missile Turret", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Hyperion (Battlecruiser)", "County Loc Universal", Exactly, 1);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Terran Missile Turret", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Castle occupied [?] cycle to new castle");
	Preserve Trigger();
	Comment("Castle occupied, Cycle to New Castle");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 8);
	Bring("Current Player", "Terran Missile Turret", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", At most, 0);

Actions:
	Create Unit with Properties("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 12", "Terran Missile Turret", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Levy already raised, cycle to new castle");
	Preserve Trigger();
	Comment("Levy Already Raised, Cycle to New Castle");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 7);
	Bring("Current Player", "Terran Missile Turret", "Anywhere", At most, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 9);
	Display Text Message(Always Display, "Castle levy complete, initiate castle return");
	Preserve Trigger();
	Comment("Return Castles to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 9);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Duchy Demobilization Tracker", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal");
	Give Units to Player("Player 12", "Current Player", "Terran Missile Turret", 1, "County Loc Universal");
	Display Text Message(Always Display, "Return castle, P12 -> player");
	Preserve Trigger();
	Comment("Return Castles to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 9);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 10);
	Display Text Message(Always Display, "Castled returned, finalize levy cascade");
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 10);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 11);
	Display Text Message(Always Display, "\x01f---------------------\r\n\x011Levies raised!\r\n\x01f---------------------");
	Preserve Trigger();
	Comment("Levy Complete!");
}

//<Mobilize levies detect duchies, then move to unit spawns (auto)//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Spawn units disabled, cycle to new Duchy");
	Preserve Trigger();
	Comment("Spawn Units Disabled, Cycle to New Duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Bring("Current Player", "Duchy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Raise Local Levy", "County Loc Universal", Exactly, 1);
	Bring("Player 12", "Disable Levy", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Levy already raised, cycle to new duchy");
	Preserve Trigger();
	Comment("Levy Already Raised, Cycle to New Duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Bedford", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Bedford", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 1);
	Display Text Message(Always Display, "Detect Bedford ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Cornwall", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Cornwall", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 2);
		Display Text Message(Always Display, "Detect Cornwall ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Wales", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Wales", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 3);
		Display Text Message(Always Display, "Detect Wales ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Lancaster", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Lancaster", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 4);
		Display Text Message(Always Display, "Detect Lancaster ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Norfolk", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Norfolk", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 5);
		Display Text Message(Always Display, "Detect Norfolk ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Northumberland", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Northumberland", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 6);
		Display Text Message(Always Display, "Detect Northumberland ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Lothian", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 7);
		Display Text Message(Always Display, "Detect Lothian ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Albany", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Albany", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 8);
		Display Text Message(Always Display, "Detect Albany ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Galloway", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Galloway", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 9);
		Display Text Message(Always Display, "Detect Galloway ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Hebrides", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Hebrides", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 10);
	Display Text Message(Always Display, "Detect Hebrides ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Morway", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Morway", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 11);
		Display Text Message(Always Display, "Detect Morway ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Ulster", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Ulster", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 12);
		Display Text Message(Always Display, "Detect Ulster ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Connacht", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Connacht", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 13);
		Display Text Message(Always Display, "Detect Connacht ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Munster", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Munster", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 14);
		Display Text Message(Always Display, "Detect Munster ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Duchy of Normandy", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Normandy", Exactly, 1);
	Bring("Player 12", "Men", "County Loc Universal", Exactly, 0);
	Deaths("Current Player", "Unit Spawn Stage", at most, 0);
	Deaths("Current Player", "Manual Levy Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Add, 1);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 15);
	Display Text Message(Always Display, "Detect Normandy ID, move to unit spawn");
	Preserve Trigger();
	Comment("Set index ID, move to unit spawns");
}

//<Unit spawn levels//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 1);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Preserve Trigger();
	Comment("Spawn militia based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 1);
	Deaths("Current Player", "Effective Manpower", At most, 1);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 2);
	Deaths("Current Player", "Effective Manpower", At least, 3);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Add, 3);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 3);
	Preserve Trigger();
	Comment("Spawn militia based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 2);
	Deaths("Current Player", "Effective Manpower", At most, 2);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce militia hall by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 3);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Preserve Trigger();
	Comment("Spawn militia based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 3);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce militia hall by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 4);
	Deaths("Current Player", "Effective Manpower", At least, 6);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 3, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Add, 6);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 6);
	Preserve Trigger();
	Comment("Spawn militia based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 4);
	Deaths("Current Player", "Effective Manpower", At most, 5);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce militia hall by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("Finish spawn cascade, move back to Duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 10);
	Deaths("Current Player", "Effective Manpower", At least, 1);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Set Deaths("Current Player", "Raised Army Size", Add, 1);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn barracks based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 10);
	Deaths("Current Player", "Effective Manpower", At most, 0);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 20);
	Deaths("Current Player", "Effective Manpower", At least, 3);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Protoss Zealot", 1, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Set Deaths("Current Player", "Raised Army Size", Add, 3);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 3);
	Preserve Trigger();
	Comment("Spawn barracks based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 20);
	Deaths("Current Player", "Effective Manpower", At most, 1);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce barracks by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 30);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Protoss Zealot", 2, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Preserve Trigger();
	Comment("Spawn barracks based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 30);
	Deaths("Current Player", "Effective Manpower", At most, 2);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce barracks by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 40);
	Deaths("Current Player", "Effective Manpower", At least, 7);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Protoss Zealot", 3, "Buffer Zone");
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Set Deaths("Current Player", "Raised Army Size", Add, 7);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 7);
	Preserve Trigger();
	Comment("Spawn barracks based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 40);
	Deaths("Current Player", "Effective Manpower", At most, 3);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 10);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce barracks by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("Finish spawn cascade, move back to Duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 100);
	Deaths("Current Player", "Effective Manpower", At least, 1);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Ultralisk", 1, "Buffer Zone");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Set to, 0);
	Set Deaths("Current Player", "Raised Army Size", Add, 1);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn cavalry based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 200);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Ultralisk", 2, "Buffer Zone");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Set to, 0);
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Preserve Trigger();
	Comment("Spawn cavalry based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 300);
	Deaths("Current Player", "Effective Manpower", At least, 3);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Ultralisk", 3, "Buffer Zone");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Set to, 0);
	Set Deaths("Current Player", "Raised Army Size", Add, 3);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 3);
	Preserve Trigger();
	Comment("Spawn cavalry based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 400);
	Deaths("Current Player", "Effective Manpower", At least, 4);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Create Unit("Current Player", "Zerg Ultralisk", 4, "Buffer Zone");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Set to, 0);
	Set Deaths("Current Player", "Raised Army Size", Add, 4);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 4);
	Preserve Trigger();
	Comment("Spawn cavalry based on counter");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 400);
	Deaths("Current Player", "Effective Manpower", At most, 3);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 100);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce cavalry by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 300);
	Deaths("Current Player", "Effective Manpower", At most, 2);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 100);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce cavalry by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 200);
	Deaths("Current Player", "Effective Manpower", At most, 1);

Actions:
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Subtract, 100);
	Preserve Trigger();
	Comment("Insufficient manpower, reduce cavalry by 1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 3);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Exactly, 100);
	Deaths("Current Player", "Effective Manpower", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Set to, 0);
	Preserve Trigger();
	Comment("Insufficient manpower, skip cavalry spawn");
}

//<Remove unit casualties from expense calculations//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Protoss Zealot", At least, 1);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Set Deaths("Current Player", "Protoss Zealot", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 2);
	Preserve Trigger();
	Comment("Zealot casualty, remove from expenses calculation");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Terran Ghost", At least, 1);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Set Deaths("Current Player", "Terran Ghost", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 1);
	Preserve Trigger();
	Comment("Ghost casualty, remove from expenses calculation");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Zerg Zergling", At least, 1);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Set Deaths("Current Player", "Zerg Zergling", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 1);
	Preserve Trigger();
	Comment("Zergling casualty, remove from expenses calculation");
}

//<Demobilize levies//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 1);
	Bring("Current Player", "Duchy", "Anywhere", At most, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 3);
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 3);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Duchy Demobilization Tracker", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal");
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 3);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 4);
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Switch("Start", set);
	Bring("Current Player", "Zerg Overlord", "PLY1 Menu", Exactly, 0);
	Deaths("Current Player", "Mobilization Stage", At least, 1);
	Deaths("Current Player", "Mobilization Stage", At most, 59);

Actions:
	Move Unit("Current Player", "Zerg Overlord", 1, "Anywhere", "PLY1 Menu");
	Set Deaths("Current Player", "Mobilization Stage", Set to, 60);
	Display Text Message(Always Display, "\x01f--------------------------\r\n\x011Sending levies home...\r\n\x01f--------------------------");
	Preserve Trigger();
	Comment("Begin demobilization");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Switch("Start", set);
	Bring("Current Player", "Zerg Overlord", "PLY2 Menu", Exactly, 0);
	Deaths("Current Player", "Mobilization Stage", At least, 1);
	Deaths("Current Player", "Mobilization Stage", At most, 59);

Actions:
	Move Unit("Current Player", "Zerg Overlord", 1, "Anywhere", "PLY2 Menu");
	Set Deaths("Current Player", "Mobilization Stage", Set to, 60);
	Display Text Message(Always Display, "\x01f--------------------------\r\n\x011Sending levies home...\r\n\x01f--------------------------");
	Preserve Trigger();
	Comment("Begin demobilization");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Switch("Start", set);
	Bring("Current Player", "Zerg Overlord", "PLY1 Menu", Exactly, 0);
	Deaths("Current Player", "Mobilization Stage", At least, 60);

Actions:
	Move Unit("Current Player", "Zerg Overlord", 1, "Anywhere", "PLY1 Menu");
	Display Text Message(Always Display, "\x01f--------------------------\r\n\x011Your levies have already been ordered home...\r\n\x01f--------------------------");
	Preserve Trigger();
	Comment("Begin demobilization error");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Switch("Start", set);
	Bring("Current Player", "Zerg Overlord", "PLY2 Menu", Exactly, 0);
	Deaths("Current Player", "Mobilization Stage", At least, 60);

Actions:
	Move Unit("Current Player", "Zerg Overlord", 1, "Anywhere", "PLY2 Menu");
	Display Text Message(Always Display, "\x01f--------------------------\r\n\x011Your levies have already been ordered home...\r\n\x01f--------------------------");
	Preserve Trigger();
	Comment("Begin demobilization error");
}

//-----------------------------------------------------------------//

//<Demobilize units removal//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 60);
	Bring("Current Player", "Terran Ghost", "Anywhere", At least, 1);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Move Location("Current Player", "Terran Ghost", "Anywhere", "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Move location to ghost if payment not occuring");
	Preserve Trigger();
	Comment("Remove Ghosts");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 61);
	Bring("Current Player", "Terran Ghost", "RemoveUnitLoc", Exactly, 1);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Ghost", 1, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 1);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 1 ghost, no enemies nearby");
	Preserve Trigger();
	Comment("Remove Ghosts");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 61);
	Bring("Current Player", "Terran Ghost", "RemoveUnitLoc", Exactly, 2);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Ghost", 2, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 2);
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 2 ghost, no enemies nearby");
	Preserve Trigger();
	Comment("Remove Ghosts");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 61);
	Bring("Current Player", "Terran Ghost", "RemoveUnitLoc", Exactly, 3);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Ghost", 3, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 3);
	Set Deaths("Current Player", "Effective Manpower", Add, 3);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 3 ghost, no enemies nearby");
	Preserve Trigger();
	Comment("Remove Ghosts");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 61);
	Bring("Current Player", "Terran Ghost", "RemoveUnitLoc", Exactly, 4);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Ghost", 4, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 4);
	Set Deaths("Current Player", "Effective Manpower", Add, 4);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 4 ghost, no enemies nearby");
	Preserve Trigger();
	Comment("Remove Ghosts");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 61);
	Bring("Current Player", "Terran Ghost", "RemoveUnitLoc", At least, 5);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Ghost", 5, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 5);
	Set Deaths("Current Player", "Effective Manpower", Add, 5);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 5 ghost, no enemies nearby");
	Preserve Trigger();
	Comment("Remove Ghosts");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 60);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);
	Bring("Current Player", "Terran Ghost", "Anywhere", At most, 0);	

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 62);
	Display Text Message(Always Display, "Removed all ghosts");
	Preserve Trigger();
	Comment("Removed ghosts, move on to remove zerglings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 62);
	Bring("Current Player", "Zerg Zergling", "Anywhere", At least, 1);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);	

Actions:
	Move Location("Current Player", "Zerg Zergling", "Anywhere", "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Move location to zergling if payment not occuring");
	Preserve Trigger();
	Comment("Move location to zergling if payment not occuring");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 63);
	Bring("Current Player", "Zerg Zergling", "RemoveUnitLoc", Exactly, 1);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);	

Actions:
	Remove Unit At Location("Current Player", "Zerg Zergling", 1, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 1);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 1 zergling");
	Preserve Trigger();
	Comment("Remove 1 zerglings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 63);
	Bring("Current Player", "Zerg Zergling", "RemoveUnitLoc", Exactly, 2);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);	

Actions:
	Remove Unit At Location("Current Player", "Zerg Zergling", 2, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 2);
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 2 zerglings");
	Preserve Trigger();
	Comment("Remove 2 zerglings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 63);
	Bring("Current Player", "Zerg Zergling", "RemoveUnitLoc", Exactly, 3);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);	

Actions:
	Remove Unit At Location("Current Player", "Zerg Zergling", 3, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 3);
	Set Deaths("Current Player", "Effective Manpower", Add, 3);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 3 zerglings");
	Preserve Trigger();
	Comment("Remove 3 zerglings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 63);
	Bring("Current Player", "Zerg Zergling", "RemoveUnitLoc", Exactly, 4);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);	

Actions:
	Remove Unit At Location("Current Player", "Zerg Zergling", 4, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 4);
	Set Deaths("Current Player", "Effective Manpower", Add, 4);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 4 zerglings");
	Preserve Trigger();
	Comment("Remove 4 zerglings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 63);
	Bring("Current Player", "Zerg Zergling", "RemoveUnitLoc", At least, 5);
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);	

Actions:
	Remove Unit At Location("Current Player", "Zerg Zergling", 5, "RemoveUnitLoc");
	Set Deaths("Current Player", "Raised Army Size", Subtract, 5);
	Set Deaths("Current Player", "Effective Manpower", Add, 5);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Display Text Message(Always Display, "Remove 5 zerglings");
	Preserve Trigger();
	Comment("Remove 5 zerglings");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 62);
	Bring("Current Player", "Zerg Zergling", "Anywhere", At most, 0);	

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 64);
	Display Text Message(Always Display, "Removed all zerglings");
	Preserve Trigger();
	Comment("Removed zerglings, move on to remove zealots");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 64);
	Bring("Current Player", "Protoss Zealot", "Anywhere", At least, 1);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Move Location("Current Player", "Protoss Zealot", "Anywhere", "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Move location to zealot if payment not occuring");
	Preserve Trigger();
	Comment("Move location to zealot if payment not occuring");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Protoss Zealot", "RemoveUnitLoc", Exactly, 1);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Protoss Zealot", 1, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 2);
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Display Text Message(Always Display, "Removed 1 zlot");
	Preserve Trigger();
	Comment("Remove 1 Zealots if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Protoss Zealot", "RemoveUnitLoc", Exactly, 2);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Protoss Zealot", 2, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 4);
	Set Deaths("Current Player", "Effective Manpower", Add, 4);
	Display Text Message(Always Display, "Removed 2 zlot");
	Preserve Trigger();
	Comment("Remove 2 Zealots if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Protoss Zealot", "RemoveUnitLoc", Exactly, 3);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Protoss Zealot", 3, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 6);
	Set Deaths("Current Player", "Effective Manpower", Add, 6);
	Display Text Message(Always Display, "Removed 3 zlot");
	Preserve Trigger();
	Comment("Remove 3 Zealots if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Protoss Zealot", "RemoveUnitLoc", Exactly, 4);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Protoss Zealot", 4, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 8);
	Set Deaths("Current Player", "Effective Manpower", Add, 8);
	Display Text Message(Always Display, "Removed 4 zlot");
	Preserve Trigger();
	Comment("Remove 4 Zealots if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Protoss Zealot", "RemoveUnitLoc", At least, 5);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Protoss Zealot", 5, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 10);
	Set Deaths("Current Player", "Effective Manpower", Add, 10);
	Display Text Message(Always Display, "Removed 5 zlot");
	Preserve Trigger();
	Comment("Remove 5 Zealots if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 64);
	Bring("Current Player", "Protoss Zealot", "Anywhere", At most, 0);	

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 66);
	Display Text Message(Always Display, "Removed all zlots");
	Preserve Trigger();
	Comment("Removed zealots, move on to remove firebats");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 66);
	Bring("Current Player", "Terran Firebat", "Anywhere", At least, 1);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Move Location("Current Player", "Terran Firebat", "Anywhere", "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "Move location to firebat if payment not occurring");
	Preserve Trigger();
	Comment("Move location to firebat if payment not occurring");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 67);
	Bring("Current Player", "Terran Firebat", "RemoveUnitLoc", Exactly, 1);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Firebat", 1, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 2);
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Display Text Message(Always Display, "Remove 1 firebat if no enemies nearby");
	Preserve Trigger();
	Comment("Remove 1 firebat if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 67);
	Bring("Current Player", "Terran Firebat", "RemoveUnitLoc", Exactly, 2);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Firebat", 2, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 4);
	Set Deaths("Current Player", "Effective Manpower", Add, 4);
	Display Text Message(Always Display, "Remove 2 firebat if no enemies nearby");
	Preserve Trigger();
	Comment("Remove 2 firebat if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 67);
	Bring("Current Player", "Terran Firebat", "RemoveUnitLoc", Exactly, 3);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Firebat", 3, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 6);
	Set Deaths("Current Player", "Effective Manpower", Add, 6);
	Display Text Message(Always Display, "Remove 3 firebat if no enemies nearby");
	Preserve Trigger();
	Comment("Remove 3 firebat if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 67);
	Bring("Current Player", "Terran Firebat", "RemoveUnitLoc", Exactly, 4);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Firebat", 4, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 8);
	Set Deaths("Current Player", "Effective Manpower", Add, 8);
	Display Text Message(Always Display, "Remove 4 firebat if no enemies nearby");
	Preserve Trigger();
	Comment("Remove 4 firebat if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 67);
	Bring("Current Player", "Terran Firebat", "RemoveUnitLoc", At least, 5);	
	Bring("Foes", "Men", "RemoveUnitLoc", At most, 0);	
	Deaths("Current Player", "Pay Resources Switch", At most, 1);

Actions:
	Remove Unit At Location("Current Player", "Terran Firebat", 5, "RemoveUnitLoc");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Set Deaths("Current Player", "Raised Army Size", Subtract, 10);
	Set Deaths("Current Player", "Effective Manpower", Add, 10);
	Display Text Message(Always Display, "Remove 5 firebat if no enemies nearby");
	Preserve Trigger();
	Comment("Remove 5 firebat if no enemies nearby");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 66);
	Bring("Current Player", "Terran Firebat", "Anywhere", At most, 0);	

Actions:
	Set Deaths("Current Player", "Raised Army Size", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Display Text Message(Always Display, "\x01f--------------------------\r\n\x011Levies sent home.\r\n\x01f--------------------------");
	Preserve Trigger();
	Comment("Levy Complete!");
}

//<Timers//>

Trigger("\x006Kings"){
Conditions:
	Switch("Start", set);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Subtract, 1);
	Preserve Trigger();
	Comment("Timer, 12 per second");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Always();

Actions:
	Set Deaths("Current Player", "Scantid (Desert)", Subtract, 1);
	Preserve Trigger();
	Comment("Music timer");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 1);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 1);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 2);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 1);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 3);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 1);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 4);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 5);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 2);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 6);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 3);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 7);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 3);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 8);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 4);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 9);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 4);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Bengalaas (Jungle)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", at most, 0);
	Deaths("Current Player", "Manpower Regen", exactly, 10);
	Switch("Start", set);

Actions:
	Set Deaths("Current Player", "Bengalaas (Jungle)", Set To, 120);
	Set Deaths("Current Player", "Pay Resources Switch", Set To, 1);
	Set Deaths("Current Player", "Effective Manpower", Add, 5);
	Preserve Trigger();
	Comment("If timer clears, reset to 10 seconds. Activate payment switch (Gateway) and regen manpower (min field type 1)");
}

//<Player sieges CPU Duchy, Activate Siege – Doubled triggers?//>

Trigger("Player 8"){
Conditions:
	Deaths("Foes", "Diplomacy", At least, 2);
	Deaths("Foes", "Warp Gate", At least, 2);
	Switch("Lothian", not set);
	Bring("Foes", "Duchy", "Empire of Britannia", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("All Players", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Current Player", "Men", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Move Location("Current Player", "Duchy", "Duchy of Lothian", "County Loc Universal");
	Create Unit with Properties("Foes", "Siege Timer", 1, "Buildings Buffer 1", 4);
	Move Unit("Foes", "Siege Timer", All, "Buildings Buffer 1", "County Loc Universal");
	Set Switch("Lothian", set);
	Preserve Trigger();
	Comment("Player sieges CPU duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", At most, 0);
	Switch("Lothian", not set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Current Player", "Men", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Move Location("Current Player", "Duchy", "Duchy of Lothian", "County Loc Universal");
	Create Unit with Properties("Player 8", "Siege Timer", 1, "Buildings Buffer 1", 4);
	Move Unit("Player 8", "Siege Timer", All, "Buildings Buffer 1", "County Loc Universal");
	Set Switch("Lothian", set);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Add, 1);
	Display Text Message(Always Display, "Initiate Siege of Duchy");
	Preserve Trigger();
	Comment("Player sieges Player Duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", At least, 1);
	Switch("Lothian", set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Men", "Duchy of Lothian", At least, 8);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Remove Unit At Location("Player 8", "Siege Timer", 1, "Duchy of Lothian");
	Set Switch("Lothian", clear);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Display Text Message(Always Display, "We have interrupted the enemy's siege of Lothian!");
	Minimap Ping("Duchy of Lothian");
	Preserve Trigger();
	Comment("Player interrupts siege, notify defender");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Foes", "Diplomacy", At least, 2);
	Deaths("Foes", "Siege Calculations (Detect Player)", At least, 1);
	Switch("Lothian", set);
	Bring("Foes", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Men", "Duchy of Lothian", At least, 8);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Display Text Message(Always Display, "We have interrupted the enemy's siege!");
	Minimap Ping("Duchy of Lothian");
	Preserve Trigger();
	Comment("Player interrupts siege, notify attacker");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", At least, 1);
	Switch("Lothian", set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Men", "Duchy of Lothian", At most, 7);
	Bring("Foes", "Men", "Duchy of Lothian", At most, 7);

Actions:
	Remove Unit At Location("Player 8", "Siege Timer", 1, "Duchy of Lothian");
	Set Switch("Lothian", clear);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Display Text Message(Always Display, "The enemy has abandoned the siege of Lothian!");
	Minimap Ping("Duchy of Lothian");
	Preserve Trigger();
	Comment("Force 1 player abandons siege, notify defender");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Foes", "Diplomacy", At least, 2);
	Deaths("Foes", "Siege Calculations (Detect Player)", At least, 1);
	Switch("Lothian", set);
	Bring("Foes", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Men", "Duchy of Lothian", At most, 7);
	Bring("Foes", "Men", "Duchy of Lothian", At most, 7);

Actions:
	Display Text Message(Always Display, "We have abandoned the siege of Lothian due to insufficient forces!");
	Minimap Ping("Duchy of Lothian");
	Preserve Trigger();
	Comment("Force 1 player abandons siege, notify attacker");
}

//<Player wins siege of CPU Duchy, calculate health//>

Trigger("Player 8","\x006Kings"){
Conditions:
	Deaths("Foes", "Diplomacy", At least, 2);
	Deaths("Foes", "Warp Gate", At least, 2);
	Switch("Lothian", set);
	Bring("Foes", "Duchy", "Empire of Britannia", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Foes", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Move Location("Player 8", "Duchy", "Duchy of Lothian", "County Loc Universal");
	Create Unit with Properties("Player 8", "Explosion Effect", 1, "County Loc Universal", 2);
	Kill Unit At Location("Player 8", "Explosion Effect", All, "County Loc Universal");
	Give Units to Player("Player 8", "Player 1", "Duchy", All, "Duchy of Lothian");
	Set Deaths("Player 8", "Int:13443", Subtract, 5120000);
	Set Deaths("Player 5", "Int:13446", Add, 1342177280);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Lothian has succumbed to siege!");
	Preserve Trigger();
	Comment("Player wins siege of CPU duchy, +80 kill count, -20000 HP");
}

//-----------------------------------------------------------------//

Trigger("Player 8","Player 2"){
Conditions:
	Deaths("Player 2", "Diplomacy", At least, 2);
	Deaths("Player 2", "Warp Gate", At least, 2);
	Switch("Lothian", set);
	Bring("Player 2", "Duchy", "Empire of Britannia", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("All Players", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Player 2", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Move Location("Player 8", "Duchy", "Duchy of Lothian", "County Loc Universal");
	Create Unit with Properties("Player 8", "Explosion Effect", 1, "County Loc Universal", 2);
	Kill Unit At Location("Player 8", "Explosion Effect", All, "County Loc Universal");
	Give Units to Player("Player 8", "Player 2", "Duchy", All, "Duchy of Lothian");
	Set Deaths("Player 8", "Int:13443", Subtract, 5120000);
	Set Deaths("Player 5", "Int:13446", Add, 1342177280);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Lothian has succumbed to siege!");
	Preserve Trigger();
	Comment("Player 2 wins siege of CPU duchy, +80 kill count, -20000 HP");
}
//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 1);
	Switch("Lothian", set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Player 1", "Men", "Duchy of Lothian", At least, 8);
	Bring("Foes", "Men", "Diplo 1", At least, 1);

Actions:
	Move Location("Current Player", "Duchy", "Duchy of Lothian", "County Loc Universal");
	Create Unit with Properties("Current Player", "Explosion Effect", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 1", "Duchy", 1, "Duchy of Lothian");
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Add, 1);
	Display Text Message(Always Display, "Siege Victory, detect loser");
	Preserve Trigger();
	Comment("Player 1 wins siege of Player duchy, move to ownership calculations");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 2);
	Memory(161323, At Least, 11581440);
	Memory(161356, At Most, 167772159);
	Switch("Lothian", set);
	Bring("Current Player", "Explosion Effect", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At most, 0);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Kill Unit At Location("Current Player", "Explosion Effect", All, "County Loc Universal");
	Set Deaths("Player 8", "Int:13443", Subtract, 5120000);
	Set Deaths("Player 5", "Int:13446", Add, 167772160);
	Set Deaths("Current Player", "Explosion Effect", Set to, 0);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Siege finished");
	Preserve Trigger();
	Comment("Player calculations: Player took Player 1 Duchy. HP at least 45240, kills at most 9. +10 kills -20000 HP and reset");
	
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 2);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Least, 167772160);
	Switch("Lothian", set);
	Bring("Current Player", "Explosion Effect", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At most, 0);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Kill Unit At Location("Current Player", "Explosion Effect", All, "County Loc Universal");
	Set Deaths("Current Player", "Explosion Effect", Set to, 0);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Siege finished");
	Preserve Trigger();
	Comment("Player calculations: Player took Player 1 Duchy. HP at most 45239, kills at least 10. No change in HP or Kills");
}

//-----------------------------------------------------------------//

Trigger("Player 1"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 2);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Most, 167772159);
	Switch("Lothian", set);
	Bring("Current Player", "Explosion Effect", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At most, 0);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);

Actions:
	Kill Unit At Location("Current Player", "Explosion Effect", All, "County Loc Universal");
	Set Deaths("Player 8", "Int:13443", Subtract, 2560000);
	Set Deaths("Player 5", "Int:13446", Add, 167772160);
	Set Deaths("Current Player", "Explosion Effect", Set to, 0);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Siege finished");
	Preserve Trigger();
	Comment("Player calculations: Player took Player 1 Duchy. HP at most 45239, kills at most 9. -10000 HP +10 kills");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Player 2", "Men", "Duchy of Lothian", At least, 8);
	Bring("Foes", "Men", "Diplo 2", At least, 1);
	Switch("Lothian", set);

Actions:
	Move Location("Current Player", "Duchy", "Duchy of Lothian", "County Loc Universal");
	Create Unit with Properties("Current Player", "Explosion Effect", 1, "County Loc Universal", 2);
	Give Units to Player("Current Player", "Player 2", "Duchy", 1, "Duchy of Lothian");
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Add, 1);
	Display Text Message(Always Display, "Siege Victory, detect loser");
	Preserve Trigger();
	Comment("Player 2 wins siege of Player duchy, move to player calculations");
}

//<Duchy conquered calculations//>

Trigger("Player 2"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 2);
	Bring("Current Player", "Explosion Effect", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At most, 0);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);
	Memory(161323, At Least, 11581440);
	Memory(161356, At Most, 167772159);
	Switch("Lothian", set);

Actions:
	Kill Unit At Location("Current Player", "Explosion Effect", All, "County Loc Universal");
	Set Deaths("Player 8", "Int:13443", Subtract, 5120000);
	Set Deaths("Player 5", "Int:13446", Add, 335544320);
	Set Deaths("Current Player", "Explosion Effect", Set to, 0);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Siege finished");
	Preserve Trigger();
	Comment("Player calculations: Player took Player 2 Duchy. HP at least 45240, kills at most 9. +20 kills -20000 HP and reset");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 2);
	Bring("Current Player", "Explosion Effect", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At most, 0);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Least, 167772160);
	Switch("Lothian", set);

Actions:
	Kill Unit At Location("Current Player", "Explosion Effect", All, "County Loc Universal");
	Set Deaths("Current Player", "Explosion Effect", Set to, 0);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Siege finished");
	Preserve Trigger();
	Comment("Player calculations: Player took Player 2 Duchy. HP at most 45239, kills at least 10. No change in HP or Kills");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Deaths("Current Player", "Siege Calculations (Detect Player)", Exactly, 2);
	Bring("Current Player", "Explosion Effect", "Duchy of Lothian", At least, 1);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At most, 0);
	Bring("Player 8", "Siege Timer", "Duchy of Lothian", At most, 0);
	Bring("Foes", "Men", "Duchy of Lothian", At least, 8);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Most, 167772159);
	Switch("Lothian", set);

Actions:
	Kill Unit At Location("Current Player", "Explosion Effect", All, "County Loc Universal");
	Set Deaths("Player 8", "Int:13443", Subtract, 2560000);
	Set Deaths("Player 5", "Int:13446", Add, 335544320);
	Set Deaths("Current Player", "Explosion Effect", Set to, 0);
	Set Deaths("Current Player", "Siege Calculations (Detect Player)", Set to, 0);
	Set Switch("Lothian", clear);
	Display Text Message(Always Display, "Siege finished");
	Preserve Trigger();
	Comment("Player calculations: Player took Player 2 Duchy. HP at most 45239, kills at most 9. -10000 HP +20 kills");
}

//<Duchy reconquered//>

Trigger("Player 1"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Least, 167772160);
	Memory(161356, At Most, 335544319);
	Switch("Lothian", not set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Foes", "Men", "Duchy of Lothian", At most, 7);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 2560000);
	Set Deaths("Player 5", "Int:13446", Subtract, 167772160);
	Display Text Message(Always Display, "Duchy reconquered!");
	Preserve Trigger();
	Comment("Player calculations: Player 1 conquered Duchy. Original owner Player 1. Restore HP to Devastated (+10000)");
}

//-----------------------------------------------------------------//

Trigger("Player 2"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Least, 335544320);
	Memory(161356, At Most, 503316479);
	Switch("Lothian", not set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Foes", "Men", "Duchy of Lothian", At most, 7);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 2560000);
	Set Deaths("Player 5", "Int:13446", Subtract, 335544320);
	Display Text Message(Always Display, "Duchy reconquered!");
	Preserve Trigger();
	Comment("Player calculations: Player 2 conquered Duchy. Original owner Player 2. Restore HP to Devastated (+10000)");
}

//-----------------------------------------------------------------//

Trigger("Player 3"){
Conditions:
	Deaths("Current Player", "Diplomacy", At least, 2);
	Memory(161323, At Most, 11581439);
	Memory(161356, At Least, 503316480);
	Memory(161356, At Most, 671088639);
	Switch("Lothian", not set);
	Bring("Current Player", "Duchy", "Duchy of Lothian", At least, 1);
	Bring("Foes", "Men", "Duchy of Lothian", At most, 7);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 2560000);
	Set Deaths("Player 5", "Int:13446", Subtract, 335544320);
	Display Text Message(Always Display, "Duchy reconquered!");
	Preserve Trigger();
	Comment("Player calculations: Player 3 conquered Duchy. Original owner Player 3. Restore HP to Devastated (+10000)");
}

//<1 Bedford Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11607040);
	Memory(19027, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11584000);
	Memory(19027, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581696);
	Memory(19027, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<1 Bedford Spawns//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Bedford");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Bedford");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 9021440);
	Memory(19027, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 9021440);
	Memory(19027, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 9021440);
	Memory(19027, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Bedford");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Most, 7627520);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Move Location("Current Player", "Raise Local Levy", "Duchy of Bedford", "County Loc Universal");
	Remove Unit At Location("Current Player", "Raise Local Levy", 1, "County Loc Universal");
	Display Text Message(Always Display, "You cannot raise levies in an occupied holding!");
	Preserve Trigger();
	Comment("Manual-Spawn fail if Occupied");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Most, 7627520);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(19027, At Least, 11581696);
	Memory(19027, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(19027, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(19027, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(19027, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Memory(19027, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:1585", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(19027, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Bedford");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(19027, At Least, 11581440);
	Memory(19027, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Bedford");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:1585", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Bedford");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}


//<2 Cornwall Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11607040);
	Memory(161743, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45640");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11584000);
	Memory(161743, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581696);
	Memory(161743, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<2 Cornwall Spawns//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Cornwall");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 9021440);
	Memory(161743, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Cornwall");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 9021440);
	Memory(161743, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161743, At Least, 11581696);
	Memory(161743, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161743, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161743, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161743, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Memory(161743, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13478", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161743, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Cornwall");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161743, At Least, 11581440);
	Memory(161743, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Cornwall");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13478", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 2);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Cornwall");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<4 Lancaster Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11607040);
	Memory(161575, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11584000);
	Memory(161575, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581696);
	Memory(161575, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<4 Lancaster Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lancaster");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 9021440);
	Memory(161575, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lancaster");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 9021440);
	Memory(161575, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161575, At Least, 11581696);
	Memory(161575, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161575, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161575, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161575, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Memory(161575, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13464", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161575, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Lancaster");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161575, At Least, 11581440);
	Memory(161575, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Lancaster");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13464", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 4);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lancaster");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<5 Norfolk Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11607040);
	Memory(161491, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11584000);
	Memory(161491, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581696);
	Memory(161491, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<5 Norfolk Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Norfolk");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 9021440);
	Memory(161491, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Norfolk");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 9021440);
	Memory(161491, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161491, At Least, 11581696);
	Memory(161491, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161491, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161491, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161491, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Memory(161491, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13457", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161491, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Norfolk");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161491, At Least, 11581440);
	Memory(161491, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Norfolk");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13457", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 5);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Norfolk");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<6 Northumberland Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11607040);
	Memory(161407, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11584000);
	Memory(161407, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581696);
	Memory(161407, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<6 Northumberland Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Northumberland");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 9021440);
	Memory(161407, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Northumberland");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 9021440);
	Memory(161407, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161407, At Least, 11581696);
	Memory(161407, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161407, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161407, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161407, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Memory(161407, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13450", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161407, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Northumberland");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161407, At Least, 11581440);
	Memory(161407, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Northumberland");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13450", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 6);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Northumberland");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<7 Lothian Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11607040);
	Memory(161323, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11584000);
	Memory(161323, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581696);
	Memory(161323, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<7 Lothian Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lothian");
	Display Text Message(Always Display, "Manual-Spawn duchy base units if solvent");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 9021440);
	Memory(161323, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 9021440);
	Memory(161323, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 9021440);
	Memory(161323, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lothian");
	Display Text Message(Always Display, "Manual-Spawn duchy base units if devastated + bankrupt");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lothian");
	Display Text Message(Always Display, "Manual-Spawn duchy base units if bankrupt");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Most, 7627520);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Move Location("Current Player", "Raise Local Levy", "Duchy of Lothian", "County Loc Universal");
	Remove Unit At Location("Current Player", "Raise Local Levy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Display Text Message(Always Display, "You cannot raise levies in an occupied holding!");
	Preserve Trigger();
	Comment("Manual-Spawn fail if Occupied");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Most, 7627520);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161323, At Least, 11581696);
	Memory(161323, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161323, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161323, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161323, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Memory(161323, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13443", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161323, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Lothian");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161323, At Least, 11581440);
	Memory(161323, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Lothian");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13443", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 7);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Lothian");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<8 Albany Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11607040);
	Memory(161239, At Most, 11684095);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45640");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11584000);
	Memory(161239, At Most, 11591935);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45280");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581696);
	Memory(161239, At Most, 11582719);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<8 Albany Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Albany");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 9021440);
	Memory(161239, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Albany");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 9021440);
	Memory(161239, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161239, At Least, 11581696);
	Memory(161239, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161239, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161239, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161239, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Memory(161239, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13436", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161239, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Albany");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161239, At Least, 11581440);
	Memory(161239, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Albany");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13436", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 8);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Albany");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<9 Galloway Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11607040);
	Memory(161155, At Most, 11684095);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45640");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11584000);
	Memory(161155, At Most, 11591935);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45280");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581696);
	Memory(161155, At Most, 11582719);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<9 Galloway Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Galloway");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 9021440);
	Memory(161155, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Galloway");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 9021440);
	Memory(161155, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161155, At Least, 11581696);
	Memory(161155, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161155, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161155, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161155, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Memory(161155, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13429", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161155, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Galloway");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161155, At Least, 11581440);
	Memory(161155, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Galloway");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13429", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 9);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Galloway");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<10 Hebrides Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11607040);
	Memory(161071, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11584000);
	Memory(161071, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581696);
	Memory(161071, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<10 Hebrides Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Hebrides");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 9021440);
	Memory(161071, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Hebrides");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 9021440);
	Memory(161071, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161071, At Least, 11581696);
	Memory(161071, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(161071, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161071, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(161071, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Memory(161071, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13422", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(161071, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Hebrides");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(161071, At Least, 11581440);
	Memory(161071, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Hebrides");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13422", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Hebrides");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<11 Morway Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11607040);
	Memory(160987, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11584000);
	Memory(160987, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581696);
	Memory(160987, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}



Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(160735, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13394", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(160735, At Least, 11607040);
	Memory(160735, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13394", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(160735, At Least, 11584000);
	Memory(160735, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13394", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(160735, At Least, 11581696);
	Memory(160735, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13394", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13394", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13394", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13394", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13394", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 14);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<11 Morway Spawns//>
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Morway");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 9021440);
	Memory(160987, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Morway");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 9021440);
	Memory(160987, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(160987, At Least, 11581696);
	Memory(160987, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(160987, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(160987, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(160987, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Memory(160987, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13415", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(160987, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Morway");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(160987, At Least, 11581440);
	Memory(160987, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Morway");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13415", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 11);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Morway");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

//<15 Normandy Upgrades//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11607040);
	Memory(160651, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11584000);
	Memory(160651, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581696);
	Memory(160651, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(19060, At Most, 16777215);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Base");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Base");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(19060, At Least, 16777216);
	Memory(19060, At Most, 33554431);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 2");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 2");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(19060, At Least, 33554432);
	Memory(19060, At Most, 50331647);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 3");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 3");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(19060, At Least, 50331648);
	Memory(19060, At Most, 67108863);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Top Row", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Information", Exactly, 1);
	Bring("Current Player", "Devouring One (Zergling)", "Duchy Right", Exactly, 1);

Actions:
	Display Text Message(Always Display, "Town INFO, Level 4");
	Wait(1500);
	Preserve Trigger();
	Comment("Upgrade Town INFO, Level 4");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Terran Armory", Exactly, 0);
	Deaths("Current Player", "Protoss Robotics Facility", Exactly, 0);
	Deaths("Current Player", "Protoss Shield Battery", Exactly, 0);
	Deaths("Current Player", "Terran Bunker", Exactly, 0);

Actions:
	Set Deaths("Current Player", "County/Duchy Upgrade Switch", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Display Text Message(Always Display, "Duchy Upgrades finished and reset");
	Preserve Trigger();
	Comment("Clear Duchy upgrade after returning HP");
}

//<15 Normandy Spawns//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Normandy");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if solvent");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 9021440);
	Memory(160651, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if solvent");
}

//-----------------------------------------------------------------//
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Auto-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At least, 5);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 5);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 5);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Normandy");
	Preserve Trigger();
	Comment("Manual-Spawn duchy base units if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 9021440);
	Memory(160651, At Most, 9021695);
	Deaths("Current Player", "Effective Manpower", At least, 2);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Zerg Zergling", 1, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Set Deaths("Current Player", "Raised Army Size", Add, 2);
	Set Deaths("Current Player", "Effective Manpower", Subtract, 2);
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Spawn duchy base units if HP is exactly 35240 (Devastated) if bankrupt");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Most, 9021439);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Skip spawn if HP is exactly 35239 (Occupied)");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Deaths("Current Player", "Effective Manpower", At most, 4);

Actions:
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Insufficient manpower, skip base spawn");
}

//-----------------------------------------------------------------//


Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 1);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581696);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 2);
	Preserve Trigger();
	Comment("If upgrades are detected, initiate arithmetic");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11607040);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 100);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 100);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45340, detect stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(160651, At Least, 11581696);
	Memory(160651, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 4);
	Preserve Trigger();
	Comment("No stables detected, if HP is already at least 45241 and at most 45284, skip stables");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 100);
	Memory(160651, At Most, 11592704);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 3);
	Preserve Trigger();
	Comment("Stables arithmetic finished, if HP is at most 45284, move to cavalry spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11584000);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 10);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 10);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45250, detect barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(160651, At Most, 11582464);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 6);
	Preserve Trigger();
	Comment("No barracks detected, if HP is already at most 45244, skip barracks");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 4);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 10);
	Memory(160651, At Most, 11582719);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 5);
	Preserve Trigger();
	Comment("Barracks arithmetic finished, if HP is at most 45244, move to barracks spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Memory(160651, At Least, 11581696);

Actions:
	Set Deaths("Player 8", "Int:13387", Subtract, 256);
	Set Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", Add, 1);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Add, 1);
	Preserve Trigger();
	Comment("Arithmetic enabled, if HP is at least 45241, detect militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 8);
	Preserve Trigger();
	Comment("No militia hall detected, if HP is already at most 45240, skip militia hall");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 6);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At least, 1);
	Memory(160651, At Most, 11581695);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 7);
	Preserve Trigger();
	Comment("Militia arithmetic finished, if HP is at most 45240, move to militia hall spawn");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Accumulate("Current Player", At least, 1, ore);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Normandy");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if solvent and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 8);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 1 (unit spawn)", At most, 0);
	Deaths("Current Player", "Pay Resources Switch", At most, 1);
	Memory(160651, At Least, 11581440);
	Memory(160651, At Most, 11581695);
	Accumulate("Current Player", At most, 0, ore);
	Accumulate("Current Player", At least, 50, gas);

Actions:
	Create Unit("Current Player", "Terran Firebat", 1, "Buffer Zone");
	Create Unit("Current Player", "Zerg Zergling", 2, "Buffer Zone");
	Create Unit("Current Player", "Terran Ghost", 1, "Buffer Zone");
	Modify Unit Hit Points("Current Player", "Men", 50, 0, "Buffer Zone");
	Move Unit("Current Player", "Men", All, "Buffer Zone", "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Duchy", 1, "Duchy of Normandy");
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 9);
	Preserve Trigger();
	Comment("Finished arithmetic, if bankrupt and HP is returned to 45240, move units and return HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 100);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 25600);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 100);
	Preserve Trigger();
	Comment("Return HP to unit x100");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 10);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 99);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 2560);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 10);
	Preserve Trigger();
	Comment("Return HP to unit x10");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At least, 1);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 9);

Actions:
	Set Deaths("Player 8", "Int:13387", Add, 256);
	Set Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", Subtract, 1);
	Preserve Trigger();
	Comment("Return HP to unit x1");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At most, 0);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Subtract, 1);
	Preserve Trigger();
	Comment("Finish HP return, go to next duchy");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 2);
	Deaths("Current Player", "Unit Spawn Stage", Exactly, 9);
	Deaths("Current Player", "Duchy Index ID", Exactly, 15);
	Deaths("Current Player", "Upgrade Buffer 2 (restore HP)", At most, 0);
	Deaths("Current Player", "Manual Levy Switch", At least, 1);

Actions:
	Set Deaths("Current Player", "Unit Spawn Stage", Set to, 0);
	Set Deaths("Current Player", "Duchy Index ID", Set to, 0);
	Set Deaths("Current Player", "Mobilization Stage", Set to, 0);
	Set Deaths("Current Player", "Manual Levy Switch", Set to, 0);
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Give Units to Player("Current Player", "Player 12", "Raise Local Levy", 1, "Duchy of Normandy");
	Display Text Message(Always Display, "\x01f-----------------------------\r\n\x011Ducal levy raised!\r\n\x01f-----------------------------");
	Preserve Trigger();
	Comment("Finish HP return for manual levy");
}

//-----------------------------------------------------------------//

