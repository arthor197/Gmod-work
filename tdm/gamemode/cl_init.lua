include( 'shared.lua' )
include( 'hud.lua' )
include( 'clockhud.lua' )
include( 'helpmenu.lua' )
include( 'sh_player.lua' )

// Clientside only stuff goes here

function set_team() 
 
 TeamFrame = vgui.Create( "DFrame" ) 
 TeamFrame:SetPos( 100, ScrH() / 2 )
 TeamFrame:SetSize( 580, 340 ) //Set the size 
 TeamFrame:SetTitle( "Team Selection" ) //Set title 
 TeamFrame:SetVisible( true ) 
 TeamFrame:SetDraggable( false ) 
 TeamFrame:ShowCloseButton( true ) 
 TeamFrame:SetBackgroundBlur( true )
 TeamFrame:MakePopup() 
 TeamFrame:Center()
 
 team_1 = vgui.Create( "DButton", TeamFrame ) 
 team_1:SetPos( 30, 30 )
 team_1:SetSize( 520, 125 ) 
 team_1:SetText( "Spetsnaz" ) 
 team_1:SetColor(Color(255,0,0))
 team_1:SetFont("HUDFontBig")
 team_1.DoClick = function()
 
     RunConsoleCommand( "team_1" )
	 TeamFrame:Close()
 
 end 
 
 team_2 = vgui.Create( "DButton", TeamFrame ) 
 team_2:SetPos( 30, 180 )
 team_2:SetSize( 520, 125 ) 
 team_2:SetText( "Navy Seals" )
 team_2:SetColor(Color(0,204,204)) 
 team_2:SetFont("HUDFontBig")
 team_2.DoClick = function()
 
     RunConsoleCommand( "team_2" )
	 TeamFrame:Close()
 
 end 
 
end

function WeaponMenuDerma() 

local WeaponFrame = vgui.Create( "DFrame" )
WeaponFrame:SetSize(417, 178)
WeaponFrame:Center()
WeaponFrame:SetTitle("Gun Menu")
WeaponFrame:SetDraggable(false)
WeaponFrame:SetSizable(false)
WeaponFrame:ShowCloseButton(true)
WeaponFrame:SetBackgroundBlur( true )
WeaponFrame:MakePopup()
 
local DeagleButton = vgui.Create( "DButton", WeaponFrame )
DeagleButton:SetSize(70, 25)
DeagleButton:SetPos(127, 247)
DeagleButton:SetText("Deagle")
DeagleButton.DoClick = function()

	RunConsoleCommand("weapon_take", "pistol") 
	WeaponFrame:Close()
	
end
 
local MP5Button = vgui.Create( "DButton", WeaponFrame )
MP5Button:SetSize(70, 25)
MP5Button:SetPos(128, 286)
MP5Button:SetText('MP-5')
MP5Button.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end
 
local AKButton = vgui.Create( "DButton", WeaponFrame )
AKButton:SetSize(70, 25)
AKButton:SetPos(126, 207)
AKButton:SetText('AK-47')
AKButton.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local GunButton = vgui.Create( "DButton", WeaponFrame )
GunButton:SetSize(70, 25)
GunButton:SetPos(382, 250)
GunButton:SetText('Gun')
GunButton.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local Gun1Button = vgui.Create( "DButton", WeaponFrame )
Gun1Button:SetSize(70, 25)
Gun1Button:SetPos(380, 208)
Gun1Button:SetText('Gun')
Gun1Button.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local Gun2Button = vgui.Create( "DButton", WeaponFrame )
Gun2Button:SetSize(70, 24)
Gun2Button:SetPos(383, 289)
Gun2Button:SetText('Gun')
Gun2Button.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local Gun3Button = vgui.Create( "DButton", WeaponFrame )
Gun3Button:SetSize(70, 25)
Gun3Button:SetPos(260, 287)
Gun3Button:SetText('Gun')
Gun3Button.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local Gun4Button = vgui.Create( "DButton", WeaponFrame )
Gun4Button:SetSize(70, 25)
Gun4Button:SetPos(260, 249)
Gun4Button:SetText('Gun')
Gun4Button.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local Gun5Button = vgui.Create( "DButton", WeaponFrame )
Gun5Button:SetSize(70, 25)
Gun5Button:SetPos(260, 208)
Gun5Button:SetText('Gun')
Gun5Button.DoClick = function()

	RunConsoleCommand("weapon_take", "smg")
	WeaponFrame:Close() 
	
end

local DLabel9 = vgui.Create( 'DLabel', WeaponFrame )
DLabel9:SetPos(470, 294)
DLabel9:SetText('$0')
DLabel9:SizeToContents()

local DLabel8 = vgui.Create( 'DLabel', WeaponFrame )
DLabel8:SetPos(471, 255)
DLabel8:SetText('$0')
DLabel8:SizeToContents()

local DLabel7 = vgui.Create( 'DLabel', WeaponFrame )
DLabel7:SetPos(471, 214)
DLabel7:SetText('$0')
DLabel7:SizeToContents()

local DLabel6 = vgui.Create( 'DLabel', WeaponFrame )
DLabel6:SetPos(348, 294)
DLabel6:SetText('$0')
DLabel6:SizeToContents()

local DLabel5 = vgui.Create( 'DLabel', WeaponFrame )
DLabel5:SetPos(348, 255)
DLabel5:SetText('$0')
DLabel5:SizeToContents()

local DLabel4 = vgui.Create( 'DLabel', WeaponFrame )
DLabel4:SetPos(348, 215)
DLabel4:SetText('$0')
DLabel4:SizeToContents()

local DLabel3 = vgui.Create( 'DLabel', WeaponFrame )
DLabel3:SetPos(213, 292)
DLabel3:SetText('$450')
DLabel3:SizeToContents()

local DLabel2 = vgui.Create( 'DLabel', WeaponFrame )
DLabel2:SetPos(214, 253)
DLabel2:SetText('$250')
DLabel2:SizeToContents()

local DLabel1 = vgui.Create( 'DLabel', WeaponFrame )
DLabel1:SetPos(215, 214)
DLabel1:SetText('$500')
DLabel1:SizeToContents()

end

usermessage.Hook( "WeaponMenuDerma", WeaponMenuDerma )
usermessage.Hook( "set_team", set_team )
concommand.Add( "selectweapon", WeaponMenuDerma )
concommand.Add( "team_menu", set_team ) 