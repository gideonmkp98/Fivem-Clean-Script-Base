local ESX = exports['es_extended']:getSharedObject()
local FW = {}


function FW:getPlayer(source)
local x = ESX.GetPlayerFromId(source)
if not x then return nil end


return {
source = source,
identifier = x.identifier,
job = x.job.name
}
end


return FW