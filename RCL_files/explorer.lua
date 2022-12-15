local component = require('component')
local gpu = component.gpu
require('../lib/program')

local explorer = {}

function explorer.set()
    gpu.setBackground(0x000000)
    gpu.fill(x, y, width, height, " ")
end

return explorer