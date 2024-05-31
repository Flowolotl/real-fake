local fs = require("@lune/fs")
local api = require("../api")
local gen1 = {}

function gen1.update()
    -- TODO download gen1 data from api, format, and save to static/gen1.json
    print("Downloading gen1 data")
    api.get("pokemon", "bulbasaur")
end

return gen1