//>1 Bedford

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

//<2 Cornwall//>

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

//<3 ?? //>

//<4 Lancaster//>

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

//<5 Norfolk//>

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

//<6 Northumberland//>

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

//<7 Lothian//>

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

//<8 Albany//>

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

//<9 Galloway//>

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

//<10 Hebrides//>

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

//<11 Morway//>

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

//<12 Ulster//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Memory(160903, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13408", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Memory(160903, At Least, 11607040);
	Memory(160903, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13408", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Memory(160903, At Least, 11584000);
	Memory(160903, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13408", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Memory(160903, At Least, 11581696);
	Memory(160903, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13408", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13408", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13408", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13408", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13408", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 12);
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

//<13 Connacht//>

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Memory(160819, At Least, 11837440);

Actions:
	Set Deaths("Player 8", "Int:13401", Subtract, 256000);
	Set Deaths("Current Player", "Terran Bunker", Add, 1);
	Display Text Message(Always Display, "Castle level detected");
	Preserve Trigger();
	Comment("Detect Castle if HP is at least 46240");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Memory(160819, At Least, 11607040);
	Memory(160819, At Most, 11709440);

Actions:
	Set Deaths("Player 8", "Int:13401", Subtract, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Add, 1);
	Display Text Message(Always Display, "Stable level detected");
	Preserve Trigger();
	Comment("Detect Stables if HP is at least 45340-45740");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Memory(160819, At Least, 11584000);
	Memory(160819, At Most, 11594240);

Actions:
	Set Deaths("Player 8", "Int:13401", Subtract, 2560);
	Set Deaths("Current Player", "Terran Armory", Add, 1);
	Display Text Message(Always Display, "Barracks level detected");
	Preserve Trigger();
	Comment("Detect Barracks if HP is at least 45250-45290");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Memory(160819, At Least, 11581696);
	Memory(160819, At Most, 11582720);

Actions:
	Set Deaths("Player 8", "Int:13401", Subtract, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Add, 1);
	Display Text Message(Always Display, "Militia Hall detected");
	Preserve Trigger();
	Comment("Detect Militia Hall if HP is at least 45241-45245");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 2);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
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
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Deaths("Current Player", "Terran Bunker", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13401", Add, 256000);
	Set Deaths("Current Player", "Terran Bunker", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Castle level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Deaths("Current Player", "Protoss Robotics Facility", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13401", Add, 25600);
	Set Deaths("Current Player", "Protoss Robotics Facility", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Stable level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Deaths("Current Player", "Terran Armory", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13401", Add, 2560);
	Set Deaths("Current Player", "Terran Armory", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Guard Barracks level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
	Deaths("Current Player", "Protoss Shield Battery", At least, 1);

Actions:
	Set Deaths("Player 8", "Int:13401", Add, 256);
	Set Deaths("Current Player", "Protoss Shield Battery", Subtract, 1);
	Display Text Message(Always Display, "Restoring HP");
	Preserve Trigger();
	Comment("Restore current Militia Hall level to HP");
}

//-----------------------------------------------------------------//

Trigger("\x006Kings"){
Conditions:
	Deaths("Current Player", "County/Duchy Upgrade Switch", Exactly, 3);
	Deaths("Current Player", "Duchy Index ID", Exactly, 13);
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

//<14 Munster//>

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

//<15 Normandy//>

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

//-----------------------------------------------------------------//