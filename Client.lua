local C = Config

local servername = C.WaterMark.ServerName
local pos = C.WaterMark.Pos
local rgba = C.WaterMark.RGBA
local scale = C.WaterMark.Scale
local font = C.WaterMark.TextFont

function Show()
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(rgba.r, rgba.g, rgba.b, rgba.a)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(servername)
	DrawText(pos.x - 0.5, pos.y - 0.495)
end



Citizen.CreateThread(function()
	while C.Show do
		Wait(5)
		Show()
	end
end)


