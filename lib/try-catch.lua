function catch(catch)
    return catch[1]
 end
 
 function try(try)
    status, result = pcall(try[1])
    if not status then
        try[2](result)
    end
    return result
 end