AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 5) == '/time' then
	    local hour = message:sub(7, 8)
        TriggerClientEvent('SetTimeEvent', player, hour)
    end
end)