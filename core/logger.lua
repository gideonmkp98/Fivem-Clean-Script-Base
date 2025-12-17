local Logger = {}

function Logger.debug(msg)
    if Config.Debug then
    print('[DEBUG]', msg)
    end
end

function Logger.info(msg)
    print('[INFO]', msg)
end

function Logger.error(msg)
    print('[ERROR]', msg)
end


return Logger