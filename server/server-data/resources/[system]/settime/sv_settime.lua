AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 5) == '/time' then
        TriggerClientEvent('SetTimeEvent', player)
    end
end)