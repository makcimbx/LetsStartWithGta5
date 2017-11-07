RegisterNetEvent('Ever_TP_Event')
AddEventHandler('Ever_TP_Event', function(id)
	local target = GetPlayerPed(GetPlayerFromServerId(tonumber(id)))
	if (GetPlayerPed(-1)==target)==false then
		local x,y,z = table.unpack(GetEntityCoords(target,true))
		SetEntityCoords(GetPlayerPed(-1),x,y,z)
		SendMessage(tonumber(id), 'Server', 'К вам телепортировался игрок '..GetPlayerName(PlayerId()))
		SendMessage(-1, 'Server', 'Вы телепортировались к игроку '..GetPlayerName(GetPlayerFromServerId(tonumber(id))))
	else
		SendMessage(-1, 'Server', 'Вы неможете телепортироваться к данному игроку!')
	end
end)

function SendMessage(player, prefix, message, prefixcolor)
	if(prefix=='Server')then
		prefixcolor = {125,125,255}
	end
	if (player==-1) then
		TriggerEvent('chatMessage',prefix, prefixcolor, message)
	else
		TriggerServerEvent('Ever_Msg', player, prefix, message, prefixcolor)
	end
end