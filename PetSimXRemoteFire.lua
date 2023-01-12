-- Made by _Ben / Owner of Grubhub scripts!

local GetRemoteUpValue = nil

for _, V in pairs(getgc(true)) do
    if type(V) ~= "table" then continue end

    if rawget(V, "Invoke") then
        if type(V.Invoke) == "function" then
            if tostring(getfenv(V.Invoke).script) == "Network" then
                GetRemoteUpValue = getupvalues(V.Invoke)[2]
                break
            end
        end
    end
end

function FireRemote(Name, ...)
    if not GetRemoteUpValue then return end
    local Remote = GetRemoteUpValue(Name)
    if not Remote then return end
    if typeof(Remote) ~= "Instance" then return end
    
    if Remote.ClassName == "RemoteEvent" then
        return Remote:FireServer(...)
    elseif Remote.ClassName == "RemoteFunction" then
        return Remote:InvokeServer(...)
    end
end

return FireRemote
