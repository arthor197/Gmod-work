
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "hud.lua" )
AddCSLuaFile( "clockhud.lua" )
AddCSLuaFile( "helpmenu.lua" )
AddCSLuaFile( "sh_player.lua" )

include( 'sh_player.lua' )
include( 'shared.lua' )


// Serverside only stuff goes here

/*---------------------------------------------------------
   Name: gamemode:PlayerLoadout( )
   Desc: Give the player the default spawning weapons/ammo
---------------------------------------------------------*/
function GM:PlayerInitialSpawn( ply ) //"When the player first joins the server and spawns" function 
 
     ply:ConCommand( "team_menu" ) //Run the console command when the player first spawns 
 
 end //End the "when player first joins server and spawn" function 
 
 function GM:PlayerLoadout(ply) --"The weapons/items that the player spawns with" function
 
	ply:StripWeapons() -- This command strips all weapons from the player.
 
	if ply:Team() == 1 then
		ply:GiveAmmo( 255,	"Pistol", 		true )
		ply:Give( "grub_m9fs" )
		ply:SetModel( "models/player/combine_soldier.mdl" )
 
	elseif ply:Team() == 2 then
		ply:Give("grub_m9fs")
		ply:SetModel( "models/player/combine_soldier_prisonguard.mdl" )
 
	end
 
end
 
 function team_1( ply ) 
 
     ply:SetTeam( 1 )
	 ply:Spawn()
 end 
 
 function team_2( ply ) 
 
     ply:SetTeam( 2 )
	 ply:Spawn()
 end
 
function WeaponSelect( ply, cmd, args )
	if args[1] == "pistol" then
	        ply:Give( "weapon_deagle" )
		ply:ChatPrint( "GUN CHANGED" )
	end
	if args[1] == "smg" then
		ply:Give( "weapon_m4" )
		ply:ChatPrint( "GUN CHANGED" )
        end
end

function GM:ShowSpare1( ply )
    umsg.Start( "WeaponMenuDerma", ply )
    umsg.End()
end

function GM:ShowTeam( ply )
    umsg.Start( "set_team", ply )
    umsg.End()
end

hook.Add("PlayerDeath", "DropWeapon", function(ply)
    local wep = ply:GetActiveWeapon()
    if (wep:IsValid()) then
        ply:DropWeapon(wep)
    end
end)

MONEY_STARTAMOUNT = 100
 
function FirstSpawn( ply )
	local cash = ply:GetPData("money")
 
	if cash == nil then
		ply:SetPData("money", MONEY_STARTAMOUNT)
		ply:SetMoney( MONEY_STARTAMOUNT ) 
	else
	ply:SetMoney( cash )
	end
 
end
hook.Add( "PlayerInitialSpawn", "playerInitialSpawn", FirstSpawn )
 
function PrintCash( pl )
	pl:ChatPrint("Your cash is: " .. pl:GetMoney())
end
 
function fPlayerDisconnect( ply )
	print("Player Disconnect: Money saved to SQLLite and TXT")
	ply:SaveMoney()
	ply:SaveMoneyTXT()
end

function GM:ShowHelp( ply )
    umsg.Start( "HelpMenu", ply )
    umsg.End()
end
 
concommand.Add("cash_get",PrintCash)
concommand.Add( "weapon_take", WeaponSelect )
concommand.Add( "team_1", team_1 )
concommand.Add( "team_2", team_2 )