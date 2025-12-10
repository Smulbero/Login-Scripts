function SetupCvar()
    -- Enable auto-loot
    if not GetCVarBool('autoLootDefault') then
        SetCVar('autoLootDefault', 1)
        print('|cFF00FF00LoginScripts:|r Auto-loot enabled.')
    end 

    -- Disable auto push on action bars
    if GetCVar('AutoPushSpellToActionBar') ~= '0' then
        SetCVar('AutoPushSpellToActionBar', '0')
        print('|cFF00FF00LoginScripts:|r Auto-push spells to actionbar disabled.')
    end
end