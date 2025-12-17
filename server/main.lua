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