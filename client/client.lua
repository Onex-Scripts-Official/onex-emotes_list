exports("RetriveEmotes", function()
    return Emotes
end)

Locales = {}


-- Function to cut the string between the first pair of ~ characters
function cutBetweenTildes(inputString)
    local startPos, endPos = inputString:find("~[^~]*~")
    if startPos and endPos then
        return inputString:sub(startPos + 1, endPos - 1)
    else
        return inputString  -- Return the original string if no ~ pair is found
    end
end

-- Translate function with ~ cutting logic
function Translate(str, ...)
    if not str then
        print(("[^1ERROR^7] Resource ^5%s^7 You did not specify a parameter for the Translate function or the value is nil!"):format(GetInvokingResource() or GetCurrentResourceName()))
        return "Given translate function parameter is nil!"
    end

    -- Cut the string between ~ characters
    local processedStr = cutBetweenTildes(str)

    -- Perform translation
    if Locales[Language] then
        if Locales[Language][processedStr] then
            return string.format(Locales[Language][processedStr], ...)
        elseif Language ~= "en" and Locales["en"] and Locales["en"][processedStr] then
            return string.format(Locales["en"][processedStr], ...)
        else
            return "Translation [" .. Language .. "][" .. processedStr .. "] does not exist"
        end
    elseif Language ~= "en" and Locales["en"] and Locales["en"][processedStr] then
        return string.format(Locales["en"][processedStr], ...)
    else
        return "Locale [" .. Language .. "] does not exist"
    end
end

-- TranslateCap function (unchanged)
function TranslateCap(str, ...)
    return _(str, ...):gsub("^%l", string.upper)
end

-- Aliases
_ = Translate
_U = TranslateCap