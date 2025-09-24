-- local Emotes = {expressions, scenarios, walk_styles, general, dance_emotes, animal, consumable, exits, prop_emotes,
--                 shared_emotes, all_emotes, shared_dances}
-- Load all emote configuration files
-- local function LoadEmotesData()
--     -- All Emotes 
--     emotesData.all_emotes = {}
--     -- Combine all emotes into a single table
--     for category, data in pairs(emotesData) do
--         if type(data) == "table" then
--             if data.options then
--                 -- For emote categories with options structure (general, dance, etc.)
--                 for _, emote in pairs(data.options) do
--                     emote.originalCategory = category
--                     table.insert(emotesData.all_emotes, emote)
--                 end
--             elseif category ~= "all_emotes" and category ~= "exits" then
--                 for _, item in pairs(data) do
--                     item.originalCategory = category
--                     table.insert(emotesData.all_emotes, item)
--                 end
--             end
--         end
--     end
--     -- shared dance init 
--     emotesData.shared_dances = emotesData.dance_emotes
--     return true
-- end
-- -- Initialize data on resource start
-- CreateThread(function()
--     LoadEmotesData()
-- end)
-- Export functions for other scripts to use
-- Get all emotes data
exports('RetrieveEmotes', function()
    return Emotes
end)

-- exports('GetScenarioModels', function()

--     local scenario_models = LoadResourceFile(GetCurrentResourceName(), 'config/scenario_models.lua')
--     if scenario_models then
--         return load(scenario_models)()
--     end

--     return false
-- end)
