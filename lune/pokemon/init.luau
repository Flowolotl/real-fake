local JSON = require("../json")
local fs = require("@lune/fs")
local Pokemon = {}

require("./gen1").update()

local gensJSON = {
    ["gen1"] = fs.readFile("./static/gen1.json"),
}

function Pokemon.getPokemon(name)

    for _, json in pairs(gensJSON) do
        local data = JSON.decode(json)
        if data[name] then
            return data[name]
        end
    end
    return nil
end

return Pokemon