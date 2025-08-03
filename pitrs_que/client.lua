local display = false

RegisterNetEvent('pitrs_que:showQueueUI')
AddEventHandler('pitrs_que:showQueueUI', function()
    if not display then
        SetNuiFocus(true, true)
        SendNUIMessage({action = "show"})
        display = true
    end
end)

RegisterNetEvent('pitrs_que:showQueueUIWithData')
AddEventHandler('pitrs_que:showQueueUIWithData', function(cardData)
    if not display then
        SetNuiFocus(true, true)
        SendNUIMessage({action = "show", card = cardData})
        display = true
    end
end)

RegisterNetEvent('pitrs_que:hideQueueUI')
AddEventHandler('pitrs_que:hideQueueUI', function()
    if display then
        SetNuiFocus(false, false)
        SendNUIMessage({action = "hide"})
        display = false
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(40)
        if display and IsControlJustReleased(0, 322) then 
            SetNuiFocus(false, false)
            SendNUIMessage({action = "hide"})
            display = false
        end
    end
end)
