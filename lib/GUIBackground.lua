local component = require('component')
local gpu = component.gpu
local width, height = gpu.getResolution()
local w, h = width/4, height/6
local unicode = require("unicode")

pixel = unicode.char(9604)
pixel_up = unicode.char(9600)

local GUIBackground={}

function GUIBackground.up_menu()

end

function GUIBackground.set()
 
  gpu.setBackground(0xFFFFFF)
    gpu.fill(1, 5, width, height, " ")
  
  gpu.setBackground(0x00FF7F)
    gpu.fill(1, height-4, width, 5, " ")
  
  gpu.setBackground(0xFFFFFF)
  gpu.setForeground(0x000000)
    gpu.fill(1, height-5, width, 1, "▁")
  
  gpu.setBackground(0x4169E1)
    gpu.fill(1, 2, width, 1, "▁")
    
  gpu.setForeground(0x000000)
end

function GUIBackground.GUIMenu()
  gpu.setBackground(0x4169E1)
  gpu.fill(1, 1, width, 2, " ")

  gpu.setBackground(0xFFFF01)
    gpu.fill(1, 3, width, 2, " ")

  gpu.setBackground(0x000000)
  gpu.setForeground(0xFFFFFF)
    gpu.set(width/2-6, 1, "ReactLua GUI")
    gpu.setBackground(0xFFFF01)
    gpu.fill(1, 4, width, 1, "▁")
end

function GUIBackground.GUIError()
  gpu.setBackground(0xFFFFFF)
  gpu.setForeground(0x333333)
  gpu.fill((width/2)-w+1, (height/2)-h+(height/4-1), width/2, 1, pixel_up)
  gpu.fill((width/2)-w+1, (height/2)-h, width/2, 1, pixel)
  gpu.setBackground(0x333333)
  gpu.fill((width/2)-w+1, (height/2)-h+1, width/2, height/4-1, " ")

  gpu.setBackground(0xBBBBBB)
  gpu.fill((width/2)-w, (height/2)-h, width/2, height/4, " ")

  gpu.setBackground(0xCFCFCF)
  gpu.fill((width/2)-w, (height/2)-h, width/2, 2, " ")
  gpu.setForeground(0x000000)
  gpu.fill((width/2)-w, (height/2)-h+1, width/2, 1, "_")
  gpu.set((width/2-3), (height/2)-h, "Error!")
end

return GUIBackground