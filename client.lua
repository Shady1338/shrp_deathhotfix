local isDead = false

AddEventHandler('esx:onPlayerDeath', function(data)
	isDead = true
end)

AddEventHandler('playerSpawned', function(spawn)
	isDead = false
end)

Citizen.CreateThread(function()
    while true do

        Wait(0)

        if IsControlPressed(0, 47) and isDead then -- G Taste
            ClearPedTasksImmediately(GetPlayerPed(-1))
            CurrentAction = nil
	    print("Death Sync")
	    print("Start Timer") 
	    Citizen.Wait(60000) -- 60 Sekunden Timer
	    print("Timer end")     
        end
    end
end)