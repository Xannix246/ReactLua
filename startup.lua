local colors = require('colors')
local component = require('component')
local button = require('/lib/button')
local GUIBackground = require('/lib/GUIBackground')
local gpu = component.gpu
local w, h = gpu.getResolution()
local event = require('event')
local blink = require('/lib/blink')
local err = require('/lib/error')
require('/db/buttons')
require('/lib/try-catch')

GUIBackground.set()

local function buttons(n)
    button.set(btn[n].X, btn[n].Y, btn[n].W, btn[n].H, btn[n].text, btn[n].textColor, btn[n].color)
end

for i=1, #btn do
    buttons(i)
end



while true do

    try {
        function()
            local click = {event.pull('touch')}
            for i=1, #btn do
                if click[3] >= btn[i].X and click[3] <= btn[i].X+btn[i].W and click[4] >= btn[i].Y and click[4] <= btn[i].Y+btn[i].H then
                    blink.set(btn[i].X, btn[i].Y, btn[i].W, btn[i].H, btn[i].text, btn[i].textColor, btn[i].color)
                    btn[i].action()
                    break 
                end
            end
        end,
     
        catch {
           function(error)
                err.set(error)
                error_visible=true
           end
        }
    }
end
