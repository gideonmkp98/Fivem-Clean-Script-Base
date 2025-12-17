local Adapter = {}

function Adapter:getPlayer(source)
    return {
        source = source,
        identifier = 'mock_'..tostring(source),
        job = 'unemployed',
        hasPermission = function(_, _) return true end,
        addMoney = function(_, amount) print('Mock add money:', amount) end
    }
end

return Adapter