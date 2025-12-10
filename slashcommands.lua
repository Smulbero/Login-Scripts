SLASH_LOGINSCRIPTS1 = '/ls'
SlashCmdList['LOGINSCRIPTS'] = function(msg)
    if msg == 'chatreset' then
        LoginScriptsDB.chatSetup = nil
        ReloadUI()
    end
end