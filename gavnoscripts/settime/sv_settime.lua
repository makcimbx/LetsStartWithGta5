AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 5) == '/time' then
	    hour = message:sub(7, 8)
        TriggerClientEvent('SetTimeEvent', -1, hour)
    end
end)