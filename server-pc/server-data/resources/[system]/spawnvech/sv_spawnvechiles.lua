AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 5) == '/vech' then
	    vech = message:sub(7,20)
        TriggerClientEvent('myEvent', player, vech)
    end
end)
