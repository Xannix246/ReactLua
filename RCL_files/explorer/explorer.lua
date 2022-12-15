local component = require('component')
local gpu = component.gpu
require('../lib/program')

local explorer = {}

function explorer.set()
    gpu.setBackground(0xFFFFFF)
    gpu.fill(x, y, width, height, " ")
    gpu.setForeground(0x000000)
    gpu.fill(x, height+1, width, 1, "_")
end

return explorer