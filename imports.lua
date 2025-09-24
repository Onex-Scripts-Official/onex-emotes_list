local load = false
local Emotes = {
    expressions = expressions,
    scenarios = scenarios,
    walk_styles = walk_styles,
    general = general,
    dance_emotes = dance_emotes,
    animal = animal,
    consumable = consumable,
    exits = exits,
    prop_emotes = prop_emotes,
    shared_emotes = shared_emotes,
    all_emotes = all_emotes,
    shared_dances = shared_dances
}

-- Load all emote configuration files
local function LoadEmotesData()
    -- All Emotes 
    Emotes.all_emotes = {}

    -- shared dance init
    Emotes.shared_dances = Emotes.dance_emotes
    load = true
    return true
end

-- -- Initialize data on resource start
CreateThread(function()
    LoadEmotesData()
end)

-- Get all emotes data

exports('RetrieveEmotes', function()
    repeat
        Wait(50)
    until load
    return Emotes
end)

exports('GetScenarioModels', function()
    return scenario_models
end)
