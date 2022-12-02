ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("eulenisforpussys")
AddEventHandler("eulenisforpussys", function()
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    local spawnreward = math.random(1000, 5000)
    
    xPlayer.addInventoryItem('red_phone', 1)
    xPlayer.addInventoryItem('pizza', 1)
    xPlayer.addInventoryItem('garlicbread', 1)
    xPlayer.addInventoryItem('money', spawnreward)

end)