-- all rights reserved @BlazeTheKing
theSounds = {}
canOutputSound = true

RegisterNetEvent('updateCustomSounds')
AddEventHandler('updateCustomSounds', function(mySounds)
	theSounds = mySounds
	for i, v in pairs(mySounds) do
		RegisterCommand(v[1], function(source)
			if(canOutputSound == true)then
				TriggerServerEvent("playCustomSoundWithinDistance", v[2])
				canOutputSound = false
				SetTimeout(5000, function()
					canOutputSound = true
				end)
			end
		end)
	end
end)

RegisterNetEvent('playCustomSoundWithinDistance')
AddEventHandler('playCustomSoundWithinDistance', function(playerNetId, maxDistance, soundFile, soundVolume)
    local lCoords = GetEntityCoords(GetPlayerPed(-1))
    local eCoords = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(playerNetId)))
    local distIs  = GetDistanceBetweenCoords(lCoords.x, lCoords.y, lCoords.z, eCoords.x, eCoords.y, eCoords.z, true)
    if(distIs <= maxDistance) then
        SendNUIMessage({
            transactionType     = 'playSound',
            transactionFile     = soundFile,
            transactionVolume   = soundVolume
        })
    end
end)
