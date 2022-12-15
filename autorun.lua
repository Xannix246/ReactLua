-- находится по пути ../reactlua кста
autorun = {
    {
        name = "explorer",
    },
    {
        name = "",
    }
}

function autorun_p()
    for i, #autorun do
        local program = require('RCL_files/' .. autorun[i])
        program.autorun[i]()
    end
end