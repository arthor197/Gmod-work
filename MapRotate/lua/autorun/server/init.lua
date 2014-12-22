PrintMessage( HUD_PRINTTALK, "Map Change: Initialized" )

timer.Start("PrintMapChange")
timer.Start("MapChange")

//Edit the map names inside the speech marks to change which maps are rotated
Maps = {}
Maps[1] = "gm_flatgrass"
Maps[2] = "gm_construct"
Maps[3] = "cs_assault"
Maps[4] = "cs_compound"
Maps[5] = "cs_office"

function PrintingMapChange()
	PrintMessage( HUD_PRINTTALK, "Map Change: Changing Map in 10 seconds" )
end

function ChangeMap()
	RunConsoleCommand("changelevel", Maps[math.random( 1, 5 )]);
end

/*Edit the 1st number for both the timers below to change how long it takes before the map changes (In seconds) 
NOTE: Make sure that "PrintMapChange" is 10 less than "MapChange"
*/
timer.Create( "PrintMapChange", 3590, 0, PrintingMapChange )
timer.Create( "MapChange", 3600, 0, ChangeMap )
