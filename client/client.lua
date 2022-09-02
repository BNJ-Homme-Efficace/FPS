local menufps = RageUI.CreateMenu("",Strings['settings'],  nil, nil, "shopui_title_fps", "shopui_title_fps")	 

RegisterKeyMapping('+fps', 'Menu FPS', 'KEYBOARD', '')

RegisterCommand('+fps', function()
    RageUI.Visible(menufps, not RageUI.Visible(menufps))
end)
--------------------------------------------------------------------------------
--------------------------------------MENU--------------------------------------
--------------------------------------------------------------------------------
    Citizen.CreateThread(function()
        while true do
            local activerfps = false
            RageUI.IsVisible(menufps, function()
            activerfps = true
            RageUI.Separator(Strings['menufps'])
			RageUI.Button(Strings['hight'], '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
				onSelected = function()
                    print("^6Woah merci BNJ")
                    SetTimecycleModifier('MP_casino_apartment_changing')
                    SetExtraTimecycleModifier('reflection_correct_ambient')
				end,
			});
            
             RageUI.Button(Strings['med'], '',  { RightBadge = RageUI.BadgeStyle.None},  true, {
                onSelected = function()
		            print("^6Woah merci BNJ")
                    SetTimecycleModifier('tunnel')
                    ClearAllBrokenGlass()
                    ClearAllHelpMessages()
                    LeaderboardsReadClearAll()
                    ClearBrief()
                    ClearGpsFlags()
                    ClearPrints()
                    ClearSmallPrints()
                    ClearReplayStats()
                    LeaderboardsClearCacheData()
                    ClearFocus()
                    ClearHdArea()
                    ClearPedBloodDamage(PlayerPedId())
                    ClearPedWetness(PlayerPedId())
                    ClearPedEnvDirt(PlayerPedId())
                    ResetPedVisibleDamage(PlayerPedId())
                    ClearOverrideWeather()
                    DisableVehicleDistantlights(false)
                    DisableScreenblurFade()
                    SetRainLevel(0.0)
                    SetWindSpeed(0.0)
                    Citizen.Wait(300)
                end,
            });
            
            RageUI.Button(Strings['low'], '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
                onSelected = function()
		            print("^6Woah merci BNJ")					
                    SetTimecycleModifier('yell_tunnel_nodirect')
                    ClearAllBrokenGlass()
                    ClearAllHelpMessages()
                    LeaderboardsReadClearAll()
                    ClearBrief()
                    ClearGpsFlags()
                    ClearPrints()
                    ClearSmallPrints()
                    ClearReplayStats()
                    LeaderboardsClearCacheData()
                    ClearFocus()
                    ClearHdArea()
                    ClearPedBloodDamage(PlayerPedId())
                    ClearPedWetness(PlayerPedId())
                    ClearPedEnvDirt(PlayerPedId())
                    ResetPedVisibleDamage(PlayerPedId())
                    ClearOverrideWeather()
                    DisableVehicleDistantlights(false)
                    DisableScreenblurFade()
                    SetRainLevel(0.0)
                    SetWindSpeed(0.0)
                    Citizen.Wait(300)
                end,
            });
            RageUI.Separator(Strings['opti'])
            RageUI.Button(Strings['superopti'], '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
                onSelected = function()
		            print("^6Woah merci BNJ")
                    --------------------------------------------------------------------------------
                    --------------------------------------OPTIMISATON-------------------------------
                    --------------------------------------------------------------------------------
                    if not HasModelLoaded(modelHash) then
                    RequestModel(modelHash)BeginTextCommandBusyString('STRING')
                    AddTextComponentSubstringPlayerName((Strings['opti1']))
                    EndTextCommandBusyString(4)
                    Citizen.Wait(5000)
                    RemoveLoadingPrompt()
                    ClearPedInPauseMenu() --Je clear
                    ClearHelp()
                    ClearNotificationsPos()
                    RequestModel(modelHash)BeginTextCommandBusyString('STRING')
                    AddTextComponentSubstringPlayerName((Strings['opti2']))
                    EndTextCommandBusyString(4)
                    Citizen.Wait(3000)
                    RemoveLoadingPrompt()
                    ClearReminderMessage() --Je Clear	
                    ClearFloatingHelp()
                    ClearGpsPlayerWaypoint()
                    ClearGpsRaceTrack()
                    ClearThisPrint()
                    RequestModel(modelHash)BeginTextCommandBusyString('STRING')
                    AddTextComponentSubstringPlayerName((Strings['opti3']))
                    EndTextCommandBusyString(4)
                    Citizen.Wait(4000)
                    RemoveLoadingPrompt()
                    ExecuteCommand("clear")
                    end
                    SetTimecycleModifier('yell_tunnel_nodirect')
                    ClearAllBrokenGlass()
                    ClearAllHelpMessages()
                    LeaderboardsReadClearAll()
                    ClearBrief()
                    ClearGpsFlags()
                    ClearPrints()
                    ClearSmallPrints()
                    ClearReplayStats()
                    LeaderboardsClearCacheData()
                    ClearFocus()
                    ClearHdArea()
                    ClearPedBloodDamage(PlayerPedId())
                    ClearPedWetness(PlayerPedId())
                    ClearPedEnvDirt(PlayerPedId())
                    ResetPedVisibleDamage(PlayerPedId())
                    ClearOverrideWeather()
                    DisableVehicleDistantlights(false)
                    DisableScreenblurFade()
                    SetRainLevel(0.0)
                    SetWindSpeed(0.0)
                    Citizen.Wait(300)
                end,
            });
            RageUI.Separator(Strings['default'])
                RageUI.Button(Strings['rest'], '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
                    onSelected = function()
                        print("^6Woah merci BNJ")
                        SetTimecycleModifier()
                        ClearTimecycleModifier()
                        ClearExtraTimecycleModifier()
                        Citizen.Wait(300)
                    end,
                });   
                
        end, function()
		end)
        if activerfps then
            Wait(0)
        else
            Wait(100)
        end
    end
end)
