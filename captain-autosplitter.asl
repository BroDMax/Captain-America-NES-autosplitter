state("fceux")
{
	byte city:			0x3B1388, 0x004D;		
	byte complete:		0x3B1388, 0x03D4;
	byte redskull:		0x3B1388, 0x04A5;
	byte start:			0x3B1388, 0x00DC;

}

state("nestopia")
{
	byte city:			"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0xB5;
	byte complete:		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x43C;
	byte redskull:		"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x50D;
	byte start:			"nestopia.exe", 0x1b2bcc, 0, 8, 0xc, 0xc, 0x144;
}

startup
{
	settings.Add("gLevels", true, "Levels");
	settings.Add("gBosses", true, "Bosses");
	
	settings.Add("cNY", false, "N.Y.", "gLevels");
	settings.Add("cColony", true, "Colony", "gLevels");
	settings.Add("cRedAlert", true, "All Red Alerts", "gLevels");
	settings.Add("cMiami", false, "Miami", "gLevels");
	settings.Add("cTampa", true, "Tampa", "gLevels");
	settings.Add("cColumbia", true, "Columbia", "gLevels");
	settings.Add("cMontgomery", false, "Montgomery", "gLevels");
	settings.Add("cNewOrleans", false, "New Orleans", "gLevels");
	settings.Add("cMississippiR", false, "Mississippi R.", "gLevels");
	settings.Add("cCharleston", false, "Charleston", "gLevels");
	settings.Add("cRichmond", false, "Richmond", "gLevels");
	settings.Add("cPittsburgh", false, "Pittsburgh", "gLevels");
	settings.Add("cPhiladelphia", true, "Philadelphia", "gLevels");
	settings.Add("cPortsmouth", false, "Portsmouth", "gLevels");
	settings.Add("cOmaha", false, "Omaha", "gLevels");
	settings.Add("cDallas", false, "Dallas", "gLevels");
	settings.Add("cDenver", false, "Denver", "gLevels");
	settings.Add("cSaltLakeCity", true, "Salt Lake City", "gLevels");
	settings.Add("cPhoenix", false, "Phoenix", "gLevels");
	settings.Add("cHouston", true, "Houston", "gLevels");
	settings.Add("cBoise", true, "Boise", "gLevels");
	settings.Add("cLasVegas", true, "Las Vegas", "gLevels");
	settings.Add("cPortland", false, "Portland", "gLevels");
	settings.Add("cAvengersPark", true, "Avengers Park", "gLevels");

	settings.Add("bWizard", true, "Wizard", "gBosses");
	settings.Add("bUltron", true, "Ultron", "gBosses");
	settings.Add("bCrossbones", true, "Crossbones", "gBosses");
	settings.Add("bRedSkull", true, "Red Skull", "gBosses");
	
}

split
{
	if (settings["cNY"] && old.city == 35 && current.city == 24) return true;
	if (settings["cColony"] && current.city == 2 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cRedAlert"] && current.city == 3 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cMiami"] && current.city == 4 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cTampa"] && current.city == 5 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cColumbia"] && current.city == 6 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cMontgomery"] && current.city == 37 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cNewOrleans"] && current.city == 8 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cMississippiR"] && current.city == 9 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cCharleston"] && old.city == 10 && current.city == 26) return true;
	if (settings["cRichmond"] && current.city == 11 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cRichmond"] && current.city == 38 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cPittsburgh"] && current.city == 12 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cPittsburgh"] && current.city == 39 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cPhiladelphia"] && current.city == 13 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cPortsmouth"] && current.city == 14 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cOmaha"] && current.city == 15 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cDallas"] && current.city == 16 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cDenver"] && current.city == 17 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cSaltLakeCity"] && old.city == 18 && current.city == 27) return true;
	if (settings["cPhoenix"] && current.city == 19 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cHouston"] && current.city == 20 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cBoise"] && current.city == 21 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cLasVegas"] && current.city == 41 && old.complete == 3 && current.complete == 6) return true;
	if (settings["cPortland"] && current.city == 23 && old.complete == 3 && current.complete == 6) return true;
	
	if (settings["bUltron"] && current.city == 24 && old.complete == 3 && current.complete == 6) return true;
	if (settings["bRedSkull"] && current.city == 25 && old.redskull == 0x96 && current.redskull == 0xFF) return true;
	if (settings["bWizard"] && current.city == 26 && old.complete == 3 && current.complete == 6) return true;
	if (settings["bCrossbones"] && current.city == 27 && old.complete == 3 && current.complete == 6) return true;
	
	if (settings["cAvengersPark"] && current.city == 36 && old.complete == 3 && current.complete == 6) return true;
}

reset
{
	return (current.complete == 0);
}

start
{
	return (old.start == 0) && (current.start == 0x80);
}
