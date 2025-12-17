local Network = {}

function Network.on(event, cb)
    RegisterNetEvent(event)
    AddEventHandler(event, cb)
end

function Network.emitClient(event, target, ...)
TriggerClientEvent(event, target, ...)
end

function Network.emitServer(event, ...)
TriggerServerEvent(event, ...)
end


return Network