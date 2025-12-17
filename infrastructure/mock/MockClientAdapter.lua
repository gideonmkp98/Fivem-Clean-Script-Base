local Adapter = {}

function Adapter:getPlayer()
    return {
        source = PlayerId(),
        identifier = 'mock_'..tostring(PlayerId()),
        job = 'unemployed',
        getCoords = function() return GetEntityCoords(PlayerPedId()) end
    }
end

return Adapter