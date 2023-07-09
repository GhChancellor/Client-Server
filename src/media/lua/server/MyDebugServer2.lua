--- MyDebugServer2 deve essere messo in una mod a parte per simulare la mod di Ashen

--Set TotalKills public functions
---@param username
---@param value
function setTotalKills(username, value)

end

--Get TotalKills public functions
---@param username
---@param value
function getTotalKills(username, value)
    return "getTotalKills  <----- MyDebugServer2"
end

--Set Deaths public functions
---@param username
---@param value
function setDeaths(username, value)

end

--Get Deaths public functions
---@param username
---@param value
function getDeaths(username, value)
    return "getDeaths  <----- MyDebugServer2"
end

local function handleClientRequest(module, command, player, args)
    print("handleClientRequest - " .. args[1])
    --local response = "Hello from the server!"
    --sendServerCommand(module, "exampleResponse",  { response })

    --local response = getTotalKills(nil,nil)
    --sendServerCommand(module, "exampleResponse",  { response })

    sendServerCommand(module, "exampleResponse",  { "A" })
end

Events.OnClientCommand.Add(handleClientRequest)

