if (SERVER) then
	AddCSLuaFile("autorun/clock.lua")
end
 
if (CLIENT) then
 
	function clockhud()
		--draw.RoundedBox( 0, ScrW()*0.01, ScrH()*0.01, 128, 46, Color( 25, 25, 25, 255 ) )
		--draw.RoundedBox( 20, ScrW()*0.01, ScrH()*0.01, 128, 46, Color( 125, 125, 125, 125 ) )
		draw.SimpleText(os.date( "%a, %I:%M:%S %p" ), "Default", ScrW()*0.024, ScrH()*0.02, Color( 255, 104, 86, 255 ),0,0)
		draw.SimpleText(os.date( "%m/%d/20%y" ), "Default", ScrW()*0.035, ScrH()*0.04, Color( 255, 104, 86, 255 ),0,0)
	end
	hook.Add("HUDPaint", "clockhud", clockhud)
end