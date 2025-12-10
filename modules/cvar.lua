function SetupCvar()
    -- Enable auto-loot
    if not GetCVarBool('autoLootDefault') then
        SetCVar('autoLootDefault', 1)
        PrintSuccess('Auto-loot enabled')
    end

    -- Disable auto push on action bars
    if GetCVar('AutoPushSpellToActionBar') ~= '0' then
        SetCVar('AutoPushSpellToActionBar', '0')
        PrintSuccess('Spell auto-push disabled')
    end
end