local component = require('component')
local gpu = component.gpu

local explorer = {}

local function explorer()
    gpu.setForeground(0x000000)
    gpu.fill(x, y, w, h, " ")
end

return explorer