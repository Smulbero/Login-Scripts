local prefixSuccess = '|cFF00FF00LoginScripts:|r '
local prefixError = '|cFFFF0000LoginScripts:|r '

function PrintSuccess(msg)
    if msg then
        print(prefixSuccess .. msg)
    end
end

function PrintError(msg)
        if msg then
        print(prefixError .. msg)
    end
end