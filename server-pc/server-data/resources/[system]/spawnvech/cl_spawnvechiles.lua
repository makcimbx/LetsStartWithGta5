RegisterNetEvent('myEvent')
AddEventHandler('myEvent', function(vech)

    local hash = GetHashKey(vech)
    RequestModel(hash)
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Citizen.Wait(0)
    end
    local vehicle = CreateVehicle(hash, x + 2, y + 2, z + 1, 0.0, true, false)
end)