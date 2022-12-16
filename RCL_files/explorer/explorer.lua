local component = require('component')
local gpu = component.gpu
require('../lib/program')
require('RCL_files/explorer/db_exp/exp_buttons')
local button = require('/lib/button')
local event = require('event')
local blink = require('../lib/blink')

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

while true do
    local click = {event.pull('touch')}
    for i=1, #exp_btn do
        if click[3] >= exp_btn[i].X and click[3] <= exp_btn[i].X+7 and click[4] >= exp_btn[i].Y and click[4] <= exp_btn[i].Y then
            --blink(exp_btn[i].X, exp_btn[i].Y, exp_btn[i].W, exp_btn[i].H, exp_btn[i].text, exp_btn[i].textColor, exp_btn[i].color)
            exp_btn[i].action()
            break 
        end
    end
end

return explorer