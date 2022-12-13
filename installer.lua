local shell = require("shell")
local fs = require("filesystem")

--Массив с программами, которые необходимо загрузить.
--Первый элемент - ссылка на файл, второй - путь для сохранения файла.
local apps = {
  { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/startup.lua", "reactLua/startup.lua" },
  { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/button.lua", "reactlua/lib/button.lua" },
  { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/blink.lua", "reactlua/lib/blink.lua" },
  { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/GUIBackground.lua", "reactlua/lib/GUIBackground.lua" },
  { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/db/buttons.lua", "reactlua/db/buttons.lua" },
}

--Загружаем файлы
for i = 1, #apps do
  print("install " .. apps[i][2])
  fs.makeDirectory(fs.path(apps[i][2]) or "")		
  shell.execute("wget " .. apps[i][1] .. " " .. apps[i][2] .. "")
  os.sleep(0.3)
end
print("OK")