local net = require("@lune/net")
local api = {}

function api.get(category, name)
    local url = "https://pokeapi.co/api/v2/" .. category .. "/" .. name
    local response = net.request(url)
    print(net.jsonDecode(response.body))
end

return api