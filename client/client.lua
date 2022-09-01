local menufps = RageUI.CreateMenu("","Menu FPS",  nil, nil, "shopui_title_fps", "shopui_title_fps")	 

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
            RageUI.Separator("~r~Menu FPS")
			RageUI.Button('Hight', '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
				onSelected = function()
                    print("^6Woah merci BNJ")
                    SetTimecycleModifier('MP_Powerplay_blend')
                    SetExtraTimecycleModifier('reflection_correct_ambient')
				end,
			});
            
             RageUI.Button('Med', '',  { RightBadge = RageUI.BadgeStyle.None},  true, {
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
            
            RageUI.Button('Low', '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
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
    
                RageUI.Button('Res', '',  { RightBadge = RageUI.BadgeStyle.Star},  true, {
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

