

function menubug()

    local menuTest = RageUI.CreateMenu(Config.TitreDuMenu, " ")

    RageUI.Visible(menuTest, not RageUI.Visible(menuTest))

    while menuTest do
        
        Citizen.Wait(0)

        RageUI.IsVisible(menuTest,true,true,true,function()
        
            RageUI.ButtonWithStyle(Config.NomBouton1, Config.Description1, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then    
             -- ouvrir l'input (clavier) ici
                        DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", "", "", "", "", 256)
                        while UpdateOnscreenKeyboard() == 0 do
                            Citizen.Wait(10)
                        end
                        if UpdateOnscreenKeyboard() == 1 then
                            inputText = GetOnscreenKeyboardResult()
                        else
                            inputText = ""
                        end
                end
            end)  

            RageUI.ButtonWithStyle(Config.NomBouton2, Config.Description2, {RightLabel = "→"}, true, function(Hovered, Active, Selected)
                if Selected then    
                    if inputText ~= "" then
                        TriggerServerEvent('deezz:sendToDiscord', inputText)
                        inputText = ""
                        menuOpen = false
                        RageUI.Visible(mainMenu, false)
                    end
                end
            end)  


        
        end, function()
        end)

        if not RageUI.Visible(menuTest) then
            menuTest=RMenu:DeleteType("Titre", true)
        end

    end

end


RegisterCommand(Config.RegisterCommandName, function()
    menubug()
end, false)



-- Notif

RegisterNetEvent('deezz:showNotif')
AddEventHandler('deezz:showNotif', function(msg)
    if Config.EnableNotifs then
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(msg)
        DrawNotification(false, true)
    end
end)