local ids = {
    ["NST"] = 6008108575,
    ["Mortem Metallum"] = 4169490976
}

local KickPlayer = function(msg)
    game.GetService(game, "Players").LocalPlayer.Kick(game.GetService(game, "Players").LocalPlayer, msg)
end

if game.PlaceId == ids["NST"] then
    local status, script = pcall(game.HttpGet, game, 'https://raw.githubusercontent.com/coroutineresumed/NerdHubInitializer/main/NST.lua')
    if status then
        loadstring(script)()
    else
        KickPlayer("failed to require loadstring | ERROR 1") 
    end
elseif game.PlaceId == ids["Mortem Metallum"] then
    -- not yet obfuscated / finished
else
    game.GetService(game, "Players").LocalPlayer.Kick(game.GetService(game, "Players").LocalPlayer, "Game is not supported.")
end
