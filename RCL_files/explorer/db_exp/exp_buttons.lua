local component = require('component')
local gpu = component.gpu
local w, h = gpu.getResolution()
local button = require('../lib/button')

exp_btn = { 
    {   
        X = 1,
        Y = 1,
        W = 2,
        H = 1,
        text = "☰☰",
        textColor = 0xCCCCCC,
        color = 0xFFFFFF,

        action = function()
            exp_menu.set()
        end

    },
    {
        X = 2,
        Y = 5,
        W = 1,
        H = 1,
        text = "Quit",
        textColor = 0xCCCCCC,
        color = 0xFFFFFF,

        action = function()
            GUIBackground.set()
            GUIBackground.GUIMenu()
            local function buttons(n)
                button.set(btn[n].X, btn[n].Y, btn[n].W, btn[n].H, btn[n].text, btn[n].textColor, btn[n].color)
            end
        end
    }
}