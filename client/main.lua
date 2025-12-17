RegisterNetEvent('my_resource:notify', function(msg)
    lib.notify({ description = msg })
end)