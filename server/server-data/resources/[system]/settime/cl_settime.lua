RegisterNetEvent('SetTimeEvent')
AddEventHandler('SetTimeEvent', function()
	 NetworkOverrideClockTime(2, 0, 0)
end)