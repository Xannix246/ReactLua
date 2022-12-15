local component = require('component')
local gpu = component.gpu
local GUIBackground = require('../lib/GUIBackground')
local button = require('../lib/button')
local notopen = true

local exp_menu={}

function exp_menu.set()
    if notopen == true then
        gpu.setBackground(0xCFCFCF)
        gpu.setForeground(0x000000)
        gpu.fill(1, 2, 20, 15, " ")
        gpu.set(1, 14, "____________________")
        notopen = false
    else
        GUIBackground.GUIMenu()
        local function buttons(n)
            button.set(exp_btn[n].X, exp_btn[n].Y, exp_btn[n].W, exp_btn[n].H, exp_btn[n].text, exp_btn[n].textColor, exp_btn[n].color)
        end
        
        for i=1, #exp_btn do
            buttons(i)
        end
        notopen = true 
    end
end

return exp_menu