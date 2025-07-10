
Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 61);
	Bring("Current Player", "Duchy", "Anywhere", At most, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 62);
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 62);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Duchy Demobilization Tracker", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal");
	Give Units to Player("Player 12", "Current Player", "Duchy", 1, "County Loc Universal");
	Display Text Message(Always Display, "Exchange sci vessel -> duchy");
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 62);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 63);
	Display Text Message(Always Display, "No sci vessels left, next stage");
	Preserve Trigger();
	Comment("Return Duchies to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 63);

Actions:
	Move Location("Current Player", "Income", "Anywhere", "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Display Text Message(Always Display, "DWhat does this do??");
	Preserve Trigger();
	Comment("Begin demobilization, Towns");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 64);
	Bring("Current Player", "Income", "Anywhere", At most, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 65);
	Preserve Trigger();
	Comment("Return Towns to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Duchy Demobilization Tracker", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal");
	Give Units to Player("Player 12", "Current Player", "Income", 1, "County Loc Universal");
	Preserve Trigger();
	Comment("Return Towns to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 65);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 66);
	Preserve Trigger();
	Comment("Return Towns to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 66);

Actions:
	Move Location("Current Player", "Terran Missile Turret", "Anywhere", "County Loc Universal");
	Set Deaths("Current Player", "Mobilization Stage", Add, 1);
	Preserve Trigger();
	Comment("Begin demobilization, Castles");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 67);
	Bring("Current Player", "Terran Missile Turret", "Anywhere", At most, 0);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 68);
	Preserve Trigger();
	Comment("Return Castles to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 68);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At least, 1);

Actions:
	Move Location("Current Player", "Duchy Demobilization Tracker", "Anywhere", "County Loc Universal");
	Remove Unit At Location("Current Player", "Duchy Demobilization Tracker", 1, "County Loc Universal");
	Give Units to Player("Player 12", "Current Player", "Terran Missile Turret", 1, "County Loc Universal");
	Preserve Trigger();
	Comment("Return Castles to Player");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "Mobilization Stage", Exactly, 68);
	Bring("Current Player", "Duchy Demobilization Tracker", "Anywhere", At most, 0);

Actions:
	Set Deaths("Current Player", "Mobilization Stage", Set to, 69);
	Preserve Trigger();
	Comment("Return Castles to Player");
}