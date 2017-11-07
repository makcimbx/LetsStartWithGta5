AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 10) == '/getweapon' then
	    local weapon = message:sub(12,50)
        TriggerClientEvent('GetWeapon', player, weapon)
    end
end)
