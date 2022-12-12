local component = require('component')
local gpu = component.gpu
local width, height = gpu.getResolution()

local GUIBackground={}

function GUIBackground.set()
 
  gpu.setBackground(0xFFFFFF)
    gpu.fill(1, 3, width, height, " ")
  
  gpu.setBackground(0x4169E1)
    gpu.fill(1, 1, width, 2, " ")
  
  gpu.setBackground(0xFFFF01)
    gpu.fill(1, 3, width, 2, " ")
  
  gpu.setBackground(0x000000)
  gpu.setForeground(0xFFFFFF)
    gpu.set(width/2-6, 1, "ReactLua GUI")
  
  gpu.setBackground(0x00FF7F)
    gpu.fill(1, height-4, width, 5, " ")
  
  gpu.setBackground(0xFFFFFF)
  gpu.setForeground(0x000000)
    gpu.fill(1, height-5, width, 1, "▁")
  
  gpu.setBackground(0x4169E1)
    gpu.fill(1, 2, width, 1, "▁")
  
  gpu.setBackground(0xFFFF01)
    gpu.fill(1, 4, width, 1, "▁")
    
  gpu.setForeground(0x000000)
end

return GUIBackground