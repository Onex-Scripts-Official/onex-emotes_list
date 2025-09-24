local emotesData = {}

-- Load all emote configuration files
local function LoadEmotesData()
    -- Load expressions
    emotesData.expressions = LoadResourceFile(GetCurrentResourceName(), 'config/expressions.lua')
    if emotesData.expressions then
        emotesData.expressions = load(emotesData.expressions)()
    end
    
    -- Load scenarios
    emotesData.scenarios = LoadResourceFile(GetCurrentResourceName(), 'config/scenarios.lua')
    if emotesData.scenarios then
        emotesData.scenarios = load(emotesData.scenarios)()
    end
    
    -- Load walk_styles
    emotesData.walk_styles = LoadResourceFile(GetCurrentResourceName(), 'config/walks.lua')
    if emotesData.walk_styles then
        emotesData.walk_styles = load(emotesData.walk_styles)()
    end
    
    -- Load general emotes
    local generalEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/general_emotes.lua')
    if generalEmotes then
        emotesData.general = load(generalEmotes)()
    end
    
    -- Load dance emotes
    local danceEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/dance_emotes.lua')
    if danceEmotes then
        emotesData.dance_emotes = load(danceEmotes)()
    end

    -- Load animal emotes
    local animalEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/animal_emotes.lua')
    if animalEmotes then
        emotesData.animal = load(animalEmotes)()
    end
    
    -- Load consumable emotes
    local consumableEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/consumable_emotes.lua')
    if consumableEmotes then
        emotesData.consumable = load(consumableEmotes)()
    end
    
    -- Load exit emotes
    local exitEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/exit_emotes.lua')
    if exitEmotes then
        emotesData.exits = load(exitEmotes)()
    end
    
    -- Load prop emotes
    local propEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/prop_emotes.lua')
    if propEmotes then
        emotesData.prop_emotes = load(propEmotes)()
    end
    
    -- Load shared emotes
    local sharedEmotes = LoadResourceFile(GetCurrentResourceName(), 'config/emotes/shared_emotes.lua')
    if sharedEmotes then
        emotesData.shared_emotes = load(sharedEmotes)()
    end

    -- All Emotes 

    emotesData.all_emotes = {} 

    -- Combine all emotes into a single table
    for category, data in pairs(emotesData) do
        if type(data) == "table" then
            if data.options then
                -- For emote categories with options structure (general, dance, etc.)
                for _, emote in pairs(data.options) do
                    emote.originalCategory = category
                    table.insert(emotesData.all_emotes, emote)
                end
            elseif category ~= "all_emotes" and category ~= "exits" then
                for _, item in pairs(data) do
                    item.originalCategory = category
                    table.insert(emotesData.all_emotes, item)
                end
            end
        end
    end

    -- shared dance init 
    emotesData.shared_dances = emotesData.dance_emotes

    return true
end

-- Initialize data on resource start
CreateThread(function()
    LoadEmotesData()
end)

-- Export functions for other scripts to use

-- Get all emotes data
exports('RetrieveEmotes', function()
    return emotesData
end)

exports('GetScenarioModels', function()

      local scenario_models = LoadResourceFile(GetCurrentResourceName(), 'config/scenario_models.lua')
    if scenario_models then
        return load(scenario_models)()
    end
    
    return false
end)
-- -- Get expressions only
-- exports('GetExpressions', function()
--     return emotesData.expressions or {}
-- end)

-- -- Get scenarios only
-- exports('GetScenarios', function()
--     return emotesData.scenarios or {}
-- end)

-- -- Get walks_styles only
-- exports('GetWalksStyles', function()
--     return emotesData.walks_styles or {}
-- end)

-- -- Get specific emote category
-- exports('GetEmotesByCategory', function(category)
--     if not category then return {} end
--     return emotesData[category] or {}
-- end)

-- -- Get emote by command
-- exports('GetEmoteByCommand', function(command)
--     if not command then return nil end
    
--     -- Search through all emote categories
--     for category, emoteList in pairs(emotesData or {}) do
--         if emoteList.options then
--             for _, emote in pairs(emoteList.options) do
--                 if emote.Command == command then
--                     return emote
--                 end
--             end
--         end
--     end
    
--     -- Search expressions
--     for _, expression in pairs(emotesData.expressions or {}) do
--         if expression.Command == command then
--             return expression
--         end
--     end
    
--     -- Search scenarios
--     for _, scenario in pairs(emotesData.scenarios or {}) do
--         if scenario.Command == command then
--             return scenario
--         end
--     end
    
--     return nil
-- end)

-- -- Reload emotes data (useful for live updates)
-- exports('ReloadEmotesData', function()
--     return LoadEmotesData()
-- end)

-- -- Get emotes count
-- exports('GetEmotesCount', function()
--     local count = {
--         expressions = #(emotesData.expressions or {}),
--         scenarios = #(emotesData.scenarios or {}),
--         walks_styles = #(emotesData.walks_styles or {}),
--         emotes = {}
--     }
    
--     for category, emoteList in pairs(emotesData or {}) do
--         if emoteList.options then
--             count.emotes[category] = #emoteList.options
--         else
--             count.emotes[category] = 0
--         end
--     end
    
--     return count
-- end)