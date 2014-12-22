
GM.Name 	= "Team Deathmatch"
GM.Author 	= "Kyle Smith"
GM.Email 	= "N/A"
GM.Website 	= "N/A"

function GM:Initialize()

	self.BaseClass.Initialize( self )
	
end
team.SetUp( 1, "Spetsnaz", Color( 125, 125, 125, 255 ) )
team.SetUp( 2, "Navy Seals", Color( 125, 125, 125, 255 ) )