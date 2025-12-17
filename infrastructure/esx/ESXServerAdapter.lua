local ESX = exports['es_extended']:getSharedObject()
local Adapter = {}

function Adapter:getPlayer(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then return nil end

    return {
        source = source,
        identifier = xPlayer.identifier,
        job = xPlayer.job.name,
        money = xPlayer.getMoney(),
        bank = xPlayer.getAccount('bank').money,
        addMoney = function(_, amount) xPlayer.addMoney(amount) end
    }
end

return Adapter