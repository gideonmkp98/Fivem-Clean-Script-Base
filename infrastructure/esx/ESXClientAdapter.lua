local Adapter = {}

function Adapter:getPlayer()
    local xPlayer = ESX.GetPlayerData()
    return {
        source = PlayerId(),
        identifier = xPlayer.identifier or 'unknown',
        job = xPlayer.job and xPlayer.job.name or 'unemployed',
        getCoords = function()
            local coords = GetEntityCoords(PlayerPedId())
            return { x = coords.x, y = coords.y, z = coords.z }
        end
    }