RegisterNetEvent('SetTimeEvent')
AddEventHandler('SetTimeEvent', function(hour)
     NetworkOverrideClockTime(hour, 0, 0)
end)