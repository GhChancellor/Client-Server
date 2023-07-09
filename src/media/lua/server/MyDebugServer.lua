 --require("Server")
require("MyDebugServer2")

-----@param player -- getplayer()
-----@param module -- AshenMPRanking
-----@param command -- "PlayerData"
-----@param args  -- userName - getPlayer:username
local function handleClientRequest(player, module, command, username )

    local totalKills = getTotalKills(username, nil)
    sendServerCommand(module, command, { totalKills })

    --sendServerCommand(module, command,{ username })

end

Events.OnClientCommand.Add(handleClientRequest)


--------------------------------------------------------------------------

--Get TotalKills public functions
---@param username
---@param value
function getTotalKillsWrp(username)
    print(">>>>>>>>>>>>>>>>>>>>>>>>>>>>> getTotalKillsWrp")
    return getTotalKills(username, nil)
end









----Set TotalKills public functions
-----@param username
-----@param value
--local function setTotalKillsWrp(username, value)
--    setTotalKills(username, value)
--end
--
----Get TotalKills public functions
-----@param username
-----@param value
--local function getTotalKillsWrp(username)
--    getTotalKills(username, nil)
--end
--
----Set Deaths public functions
-----@param username
-----@param value
--local function setDeathsWrp(username, value)
--    setDeaths(username, value)
--end
--
----Get Deaths public functions
-----@param username
-----@param value
--local function getDeathsWrp(username)
--    getDeaths(username, nil)
--end
--



