AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 10) == '/createped' then
	    local model = message:sub(12,40)
        TriggerClientEvent('CreatePed', player, model)
    end
end)