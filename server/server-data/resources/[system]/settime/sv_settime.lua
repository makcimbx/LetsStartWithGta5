AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 5) == '/time' then
	    hour = message:sub(7,12)
        TriggerClientEvent('SetTimeEvent', player, hour)
    end
end)