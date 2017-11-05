AddEventHandler('chatMessage', function(player, color, message)
    if message:sub(1, 3) == '/tp' then
        local target = message:sub(5, string.len("message")-5)
    end
end)