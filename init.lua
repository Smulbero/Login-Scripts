local addonName = 'LoginScripts'
local addon = CreateFrame('Frame')

LoginScriptsDB = LoginScriptsDB or {}

addon:RegisterEvent('PLAYER_LOGIN')
addon:SetScript('OnEvent', function(_, event)
    if event == 'PLAYER_LOGIN' then
        C_Timer.After(2, function()
            -- Run all modules
            if SetupCvar then SetupCvar() end
            if SetupChatWindows then SetupChatWindows() end
            if SetupMisc then SetupMisc() end
        end)
    end
end)