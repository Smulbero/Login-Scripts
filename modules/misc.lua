function SetupMisc()
    -- Hide Micro Button Alerts
    MainMenuMicroButton_SetAlertsEnabled(false, 'addon')
    PrintSuccess('Micro alerts disabled')

    -- Load Edit Mode profile
    if C_EditMode.GetLayouts().activeLayout ~= 3 then
        C_EditMode.SetActiveLayout(3)
        PrintSuccess('Edit Mode profile loaded')
    end
end