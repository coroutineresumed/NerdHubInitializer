local ids = {
    ["NST"] = 6008108575,
    ["Mortem Metallum"] = {Alpha = 4169490976, Beta = 8986335348},
    ["Assassin"] = {Classic = 379614936, FreePlay = 5006801542, Pro = 860428890},
    ["Combat Warriors"] = 4282985734
}

local KickPlayer = function(msg)
    game.GetService(game, "Players").LocalPlayer.Kick(game.GetService(game, "Players").LocalPlayer, msg)
end

if game.PlaceId == ids["NST"] then
    local status, script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/coroutineresumed/NerdHubInitializer/main/NST.lua')
    if status then
        loadstring(script)()
    else
        KickPlayer("failed to require loadstring | does your exploit support loadstring?")
    end
elseif table.find(ids["Mortem Metallum"], game.PlaceId) or game.PlaceId == ids["Mortem Metallum"].Alpha or game.PlaceId == ids["Mortem Metallum"].Beta then
    local status, script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/coroutineresumed/NerdHubInitializer/main/Mortem_Metallum.lua')
    if status then
        loadstring(script)()
    else
        KickPlayer("failed to require loadstring | does your exploit support loadstring?")
    end
elseif table.find(ids["Assassin"], game.PlaceId) or game.PlaceId == ids['Assassin'].Classic or game.PlaceId == ids['Assassin'].FreePlay or game.PlaceId == ids['Assassin'].Pro then
    local status, script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/coroutineresumed/NerdHubInitializer/main/Assassin')
    if status then
        loadstring(script)()
    else
        KickPlayer("failed to require loadstring | does your exploit support loadstring?")
    end
elseif game.PlaceId == ids["Combat Warriors"] then
    local status, script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/coroutineresumed/NerdHubInitializer/main/Combat_Warriors.lua')
    if status then
        loadstring(script)()
    else
        KickPlayer("failed to require loadstring | does your exploit support loadstring?")
    end
else
    game.GetService(game, "Players").LocalPlayer.Kick(game.GetService(game, "Players").LocalPlayer, "Game is not supported.")
end
