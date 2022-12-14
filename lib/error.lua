local component = require('component')
local GUIBackground = require('../lib/GUIBackground')
require('/lib/try-catch')
local button = require('/lib/button')
local gpu = component.gpu
local width, height = gpu.getResolution()
local w, h = width/4, height/6
_G.error_visible=false
local event = require('event')
local blink = require('/lib/blink')

local err={}

function err.set(err1)
    if error_visible then
        try {
            function()
                GUIBackground.GUIError()
                gpu.setForeground(0x000000)
                gpu.set((width/2-w+3), (height/2)-h*0.4, "Error: " .. err1)
                button.set(e_btn[1].X, e_btn[1].Y, e_btn[1].W, e_btn[1].H, e_btn[1].text, e_btn[1].textColor, e_btn[1].color)
                while true do
                    local click = {event.pull('touch')}
                    if click[3] >= e_btn[1].X and click[3] <= e_btn[1].X+7 and click[4] >= e_btn[1].Y and click[4] <= e_btn[1].Y then
                        blink.set(e_btn[1].X, e_btn[1].Y, e_btn[1].W, e_btn[1].H, e_btn[1].text, e_btn[1].textColor, e_btn[1].color)
                        e_btn[1].action()
                        break 
                    end
                end

            end,
            catch {
                function(error)
                    gpu.setBackground(0x000000)
                    gpu.setForeground(0xFFFFFF)
                    gpu.fill(1, 1, w, h, " ")
                    os.exit()
                end
            }
        }
    else
        GUIBackground.set()
        local function buttons(n)
            button.set(btn[n].X, btn[n].Y, btn[n].W, btn[n].H, btn[n].text, btn[n].textColor, btn[n].color)
        end
        
        for i=1, #btn do
            buttons(i)
        end
        error_visible = false
    end
end

return err