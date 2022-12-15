local component = require('component')
local gpu = component.gpu
require('../lib/program')
require('/db_exp/exp_buttons')

local explorer = {}

function explorer.set()
    gpu.setBackground(0xFFFFFF)
    gpu.fill(x, y, width, height, " ")
    gpu.setForeground(0x000000)
    gpu.fill(x, height+1, width, 1, "_")

    local function buttons(n)
        button.set(exp_btn[n].X, exp_btn[n].Y, exp_btn[n].W, exp_btn[n].H, exp_btn[n].text, exp_btn[n].textColor, exp_btn[n].color)
    end
    
    for i=1, #exp_btn do
        buttons(i)
    end
end

return explorer