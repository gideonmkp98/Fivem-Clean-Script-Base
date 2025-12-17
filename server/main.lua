local Logger = require('core.Logger')
local Framework = require('infrastructure.FrameworkFactory')

Logger.info('Resource started')
Logger.info('Framework: ' .. Config.Framework)

-- Hier wire je services + repositories
-- local Repo = require('infrastructure.storage.SomeRepo'):new()
-- local Service = require('domain.services.SomeService'):new({ repo = Repo })

RegisterNetEvent('my_resource:example', function()
    local player = Framework:getPlayer(source)
    if not player then return end
    Logger.debug('Player ' .. player.identifier .. ' triggered example')
end)

-- Test command
RegisterCommand('testcmd', function(source, args, rawCommand)
    local playerId = source
    
    if playerId == 0 then
        -- Uitgevoerd vanaf server console
        Logger.info('Test command uitgevoerd vanaf console!')
        print('^2[TEST]^7 Command werkt! Argumenten: ' .. table.concat(args, ', '))
    else
        -- Uitgevoerd door een speler
        local player = Framework:getPlayer(playerId)
        if player then
            Logger.info('Test command uitgevoerd door speler: ' .. player.identifier)
            TriggerClientEvent('chat:addMessage', playerId, {
                color = {0, 255, 0},
                multiline = true,
                args = {'[TEST]', 'Command werkt! Je ID: ' .. playerId}
            })
        end
    end
end, false)