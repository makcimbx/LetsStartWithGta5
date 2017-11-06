AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 3) == '/tp' then
		local id = message:sub(5, 6)
		TriggerClientEvent('Ever_TP_Event', player,id)
		CancelEvent()
    end
end)

RegisterNetEvent('Ever_Msg')
AddEventHandler('Ever_Msg', function(player, prefix, message, prefixcolor)
	TriggerClientEvent('chatMessage',player,prefix, prefixcolor, message)
end)