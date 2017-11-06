AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 7) == '/health' then
	    local health = message:sub(9,20)
        TriggerClientEvent('SetHealth', player, health)
    end
end)
