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
    -- All Emotes - combine all emote categories except expressions, scenarios, and walk_styles
    Emotes.all_emotes = {}

    -- Categories to exclude from all_emotes
    local excludeCategories = {
        exits = true,
        all_emotes = true,
        shared_dances = true
    }

    -- Combine all emote categories into all_emotes
    for categoryName, categoryData in pairs(Emotes) do
        if not excludeCategories[categoryName] and type(categoryData) == 'table' then
            for emoteName, emoteData in pairs(categoryData) do
                Emotes.all_emotes[emoteName] = emoteData
                Emotes.all_emotes[emoteName].originalCategory = categoryName
            end
        end
    end

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
