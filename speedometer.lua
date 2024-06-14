function text(content)
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content .. "MPH")
    DrawText(0.85,0.8)
end

Citizen.CreateThread(function()

    while true do 
        Citizen.Wait(2)
    --[[
        kph's factor = 3.6
        mph's factpr = 2.2369
        ]]
        local speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1),false))*2.2369
        -- Check if ped is in a vehicle 
        if (IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end

end)
