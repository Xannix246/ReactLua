local component = require('component')
local gpu = component.gpu
local GUIBackground = require('../lib/GUIBackground')
local button = require('../lib/button')
local notopen = true

local menu={}

function menu.set()
    if notopen == true then
        gpu.setBackground(0xCFCFCF)
        gpu.setForeground(0x000000)
        gpu.fill(1, 2, 20, 15, " ")
        gpu.set(1, 14, "____________________")
        notopen = false
    else
        GUIBackground.set()
        local function buttons(n)
            button.set(btn[n].X, btn[n].Y, btn[n].W, btn[n].H, btn[n].text, btn[n].textColor, btn[n].color)
        end
        
        for i=1, #btn do
            buttons(i)
        end
        notopen = true 
    end
end

return menu