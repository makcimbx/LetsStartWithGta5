RegisterNetEvent('GetWeapon')
AddEventHandler('GetWeapon', function(weapon)
    local ped = GetPlayerPed(-1)
	local hash = GetHashKey(weapon)
    GiveWeaponToPed(ped, hash, 9999, false, true)
end)