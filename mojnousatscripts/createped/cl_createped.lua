RegisterNetEvent('CreatePed')

AddEventHandler('CreatePed', function(model)

    modelHash = GetHashKey(model)
    RequestModel(modelHash)

    while not HasModelLoaded(modelHash) do
        Wait(1)
    end

    rotation = 120.01 --Must have a decimal i think
    NetworkSync= true -- shared with other players (they can see him, shoot him, kill him, etc...)
	
	local target = GetPlayerPed(-1)
	local x,y,z = table.unpack(GetEntityCoords(target,true))
    
    created_ped = CreatePed(5, modelHash , x + 2, y + 2, z + 1, rotation, NetworkSync, NetworkSync)
end)
