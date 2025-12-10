function SetupMisc()
    -- Hide Micro Button Alerts
    MainMenuMicroButton_SetAlertsEnabled(false, 'addon')
    print('|cFF00FF00LoginScripts:|r Micro alerts disabled.')

    -- Load Edit Mode profile
    if C_EditMode.GetLayouts().activeLayout ~= 3 then
        C_EditMode.SetActiveLayout(3)
        print('|cFF00FF00LoginScripts:|r Edit Mode profile 3 loaded.')
    end
end