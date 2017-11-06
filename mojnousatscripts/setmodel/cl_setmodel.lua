RegisterNetEvent('SetModel')
AddEventHandler('SetModel', function(hash)
if DoesEntityExist(GetPlayerPed(-1)) then
	local model = GetHashKey(hash)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(0)
	end
	SetPlayerModel(PlayerId(), model)
	SetModelAsNoLongerNeeded(model)
end
end)