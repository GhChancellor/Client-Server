 --require("Server")
require("MyDebugServer2")

local isoPlayerPz = require("lib/IsoPlayerPZ")
local characterPZ = require("lib/CharacterPZ")
local dbgLeleLib = require("lib/DbgLeleLib")

--[[local function onServerResponse(module, command, args)
    print("onServerResponse")

    print(args)

    local dbg1 = {}
    dbg1 = args
    local dbg

    print("-----------------------------------")
    print(args.ladder.zKillsTot[1][1])
    print("-----------------------------------")

    print("-----------------------------------")
    -- print(getTotalKills(getPlayer():getUsername(), nil))
    print("-----------------------------------")

end]]

local function onServerResponse(module, command, args)
    print("onServerResponse")
    local userName = getPlayer():getUsername()
    local value = getTotalKillsWrp(userName)

    dbgLeleLib.printLine()
    print(args[1])
    print(value)
    dbgLeleLib.printLine()
    local dbg
end


local function sendServerRequest()
    print("sendServerRequest")
    local player = getPlayer()
    local module = "AshenMPRanking"
    local command = "PlayerData"
    local username = player:getUsername()
    local dbg

    sendClientCommand(player, module, command, {username})
end

-- Perks.Maintenance
-- Perks.Woodwork
-- Perks.Sprinting
-- Todo 		self.character:playSound("CloseBook")
---@param character IsoGameCharacter
local function key34(character, key)
    if key == 34 then -- <<<< g
        print("Key = g > handleClientRequest \n")
        sendServerRequest()
    end
end

---@param character IsoGameCharacter
local function key35(character, key)
    if key == 35 then -- <<< h
        print("Key = h > killed zombies \n")
        characterPZ.setZombieKills_PZ(15)
    end
end

---@param character IsoGameCharacter
local function key36(character, key)
    if key == 36 then -- <<<< j

    end
end

---@param character IsoGameCharacter
local function key37(character, key)
    if key == 37 then -- <<<< k
        print("Key = k > delete \n")
        character:die()
    end
end

---@param character IsoGameCharacter
local function key16(character, key)
    if key == 16 then -- <<<< q
        print("Key = q >  \n")

    end
end

---@param character IsoGameCharacter
local function key17(character, key)
    if key == 17 then -- <<<< w
        print("Key = w >  \n")

    end
end

---@param character IsoGameCharacter
local function key18(character, key)
    if key == 18 then -- <<<< e
        print("Key = e >  \n")

    end
end

local function onCustomUIKeyPressed(key)
    local character = getPlayer()

    key16(character, key)
    key17(character, key)
    key18(character, key)
    key34(character, key)
    key35(character, key)
    key36(character, key)
    key37(character, key)
end


-- ------------------------------------------------------------
-- ------------------------------------------------------------

local function OnGameStart()

end

-- Events.OnGameStart.Add(OnGameStart)
Events.OnCustomUIKeyPressed.Add(onCustomUIKeyPressed)
Events.OnServerCommand.Add(onServerResponse)


---------------------------------------------------------
--[[

local function onServerResponse(module, command, args)
    -- print(">>>>>>>>>>>>>>>>>>>>>>>> " .. tostring(args[1]))
end

local function sendServerRequest()
    -- print("Client > sendServerRequest")
    local player = getPlayer()
    --sendClientCommand(player, "MyMod", "mio", {""})
    sendClientCommand(player, "MyMod", mio, {"A"})
    sendClientCommand(player, "MyMod", tuo, {"A"})
    print("aaaaaaaaaa")
    print(getMio())
    print("aaaaaaaaaa")
    print(getTuo())
    print("aaaaaaaaaa")
end

-- Events.OnKeyPressed.Add(sendServerRequest)
-- Events.OnKeyPressed.Add(sendServerRequest)
-- Events.OnServerCommand.Add(onServerResponse)

---------------------------------------------------------

--local handleClientRequest = function (module, command, player, args)
local function handleClientRequest(module, command, player, args)
    --print("My debug Client >>>>> args " .. tostring(args[1]))
    --print("handleClientRequest - " .. args[1])
    print("-----------------------------")
    print("My debug Client  >>>>>>>>>>>>> handleClientRequest ")
    print("My debug Client >>>>> player " .. tostring(player))
    print("My debug Client >>>>> module " .. tostring(module))
    print("My debug Client >>>>> command " .. tostring(command))
    print("-----------------------------")
    print("-----------------------------")
    print(getMio())
    print(getTuo())
    print("-----------------------------")
    --local response --  = getMio()
    --
    -- if command == "mio" then
    --    response = getMio()
    --     print("-----------------------------")
    --     print("My debug Client MIO >>>>>>>>>> " .. mio)
    --     sendServerCommand(module, mio,  { response })
    --     print("My debug Client MIO >>>>>>>>>> " .. response)
    --     print("-----------------------------")
    --
    --elseif command == "tuo" then
    --     print("-----------------------------")
    --    response = getTuo()
    --     print("My debug Client TUO >>>>>>>>>> " .. tuo)
    --     sendServerCommand(module, tuo,  { response })
    --     print("My debug Client TUO >>>>>>>>>> " .. response)
    --     print("-----------------------------")
    --end

    --response = getMio()
    --sendServerCommand(module, "exampleResponse",  { response })
end

-- Events.OnServerCommand.Add(handleClientRequest)

---------------------------------------------------------]]
