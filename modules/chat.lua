local function CreateChatFrame(name, messageGroups, channels)
    -- Check if window already exists
    for i = 1,  NUM_CHAT_WINDOWS do
        local windowName = GetChatWindowInfo(i)
        if windowName == name then
            PrintError('Found existing [' .. name .. '] window already')
            return
        end
    end

    local frame = FCF_OpenNewWindow(name)
	ChatFrame_RemoveAllMessageGroups(frame)
	ChatFrame_RemoveAllChannels(frame)

    if messageGroups then
        for _, t in ipairs(messageGroups) do
            frame:AddMessageGroup(t)
        end
    end

    if channels then
        for _, t in ipairs(channels) do
            frame:AddChannel(t)
        end
    end
    
    return frame
end

local function ClearGeneral(messageGroups, channels)
    local frame = DEFAULT_CHAT_FRAME
    if not frame then
        PrintError('Defaul chat frame not found')
        return
    end

    for _, t in ipairs(messageGroups) do
        if not t ~= 'LOOT' then
            frame:RemoveMessageGroup(t)
        end
    end

    for _, t in ipairs(channels) do
            frame:RemoveChannel(t)
    end
end

function SetupChatWindows()
    -- Early exit
    if LoginScriptsDB.chatSetup then
        return
    end

    -- Reset chat configurations
    FCF_ResetChatWindows()

    PrintSuccess('Chat setup started...')

    local messageGroups = {
        'WHISPER',
        'WHISPER_INFORM',
        'BN_WHISPER',
        'BN_WHISPER_INFORM',
    }
    local channels = {
        'Trade',
        'Services',
    }

    local chatWindows = {
        {
            name = 'Whispers',
            messageGroups = messageGroups,
            channels = nil
        },
        {
            name = 'Trade',
            messageGroups = {'LOOT'},
            channels = channels
        },
    }

    for _, window in ipairs(chatWindows) do
        CreateChatFrame(window.name, window.messageGroups, window.channels)
    end

    ClearGeneral(messageGroups, channels)

    PrintSuccess('...chat setup succeeded')

    -- Chat setup done for character
    LoginScriptsDB.chatSetup = true
end