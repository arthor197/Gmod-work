function HelpMenu() 
local DButton6
local DButton4
local DButton3
local DButton2
local DButton1
local DFrame1

DButton6 = vgui.Create('DButton', helpframe)
DButton6:SetSize(70, 25)
DButton6:SetPos(259, 228)
DButton6:SetText('Button')
DButton6.DoClick = function() end

DButton4 = vgui.Create('DButton', helpframe)
DButton4:SetSize(70, 25)
DButton4:SetPos(259, 185)
DButton4:SetText('Button')
DButton4.DoClick = function() end

DButton3 = vgui.Create('DButton', helpframe)
DButton3:SetSize(70, 25)
DButton3:SetPos(136, 267)
DButton3:SetText('Gun Shop')
DButton3.DoClick = function()

	RunConsoleCommand( "selectweapon" )
	helpframe:Close()

 end

DButton2 = vgui.Create('DButton', helpframe)
DButton2:SetSize(70, 25)
DButton2:SetPos(136, 226)
DButton2:SetText('Change Team')
DButton2.DoClick = function() 

	RunConsoleCommand( "team_menu" )
	helpframe:Close()
	
 end

DButton1 = vgui.Create('DButton', helpframe)
DButton1:SetSize(70, 25)
DButton1:SetPos(135, 183)
DButton1:SetText('RTV')
DButton1.DoClick = function() end

DFrame1 = vgui.Create('DFrame')
DFrame1:SetSize(402, 223)
DFrame1:Center()
DFrame1:SetTitle('Help and info')
DFrame1:SetDeleteOnClose(false)
DFrame1:MakePopup()
end