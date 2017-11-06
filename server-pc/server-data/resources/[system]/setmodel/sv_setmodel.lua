AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 9) == '/setmodel' then
	    hash = message:sub(11,40)
        TriggerClientEvent('SetModel', player, hash)
    end
end)
