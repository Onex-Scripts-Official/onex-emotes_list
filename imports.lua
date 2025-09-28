local load = false
local Emotes = {
    expressions = expressions,
    scenarios = scenarios,
    walk_styles = walk_styles,
    general = general,
    dance_emotes = dance_emotes,
    animal_emotes = animal_emotes,
    consumable = consumable,
    exits = exits,
    prop_emotes = prop_emotes,
    shared_emotes = shared_emotes,
    all_emotes = all_emotes,
    shared_dances = shared_dances
}

-- Deep clone function to create a complete copy of a table
local function deepcopy(original)
    if type(original) ~= 'table' then
        return original
    end

    local copy = {}
    for key, value in pairs(original) do
        copy[deepcopy(key)] = deepcopy(value)
    end

    -- Handle metatables
    local mt = getmetatable(original)
    if mt then
        setmetatable(copy, deepcopy(mt))
    end

    return copy
end

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
    local cloned_shared_dances = deepcopy(Emotes.dance_emotes)
    local shared_dances = {}

    for k, emoteObject in pairs(cloned_shared_dances) do
        local emote = emoteObject
        if not emote.options then emote.options = {} end

        emote.name = k
        emote.options.shared = { otheremote = k }
        emote.synchronized = true
        shared_dances[k] = emote
    end

    Emotes.shared_dances = shared_dances

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
