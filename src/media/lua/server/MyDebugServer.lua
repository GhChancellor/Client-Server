require("server/Server")

-----@param player -- getplayer()
-----@param module -- AshenMPRanking
-----@param command -- "PlayerData"
-----@param args  -- userName - getPlayer:use
local function handleClientRequest(player, module, command, username )
     local totalKills = getTotalKills(username, nil)
     sendServerCommand(module, command, { totalKills })
end

Events.OnClientCommand.Add(handleClientRequest)














--Set TotalKills public functions
---@param username
---@param value
local function setTotalKillsWrp(username, value)
    setTotalKills(username, value)
end

--Get TotalKills public functions
---@param username
---@param value
local function getTotalKillsWrp(username)
    getTotalKills(username, nil)
end

--Set Deaths public functions
---@param username
---@param value
local function setDeathsWrp(username, value)
    setDeaths(username, value)
end

--Get Deaths public functions
---@param username
---@param value
local function getDeathsWrp(username)
    getDeaths(username, nil)
end




