RegisterNetEvent('SetTimeEvent')
AddEventHandler('SetTimeEvent', function(hour)
     SetClockTime(hour, 0, 0)
end)