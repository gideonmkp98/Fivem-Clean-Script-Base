local Framework = nil

if Config.Framework == 'esx' then
    if IsDuplicityVersion() then
        Framework = require('infrastructure.esx.ESXServerAdapter')
    else
        Framework = require('infrastructure.esx.ESXClientAdapter')
    end
elseif Config.Framework == 'mock' then
    if IsDuplicityVersion() then
        Framework = require('infrastructure.mock.MockServerAdapter')
    else
        Framework = require('infrastructure.mock.MockClientAdapter')
    end
else
    error('Unsupported framework: ' .. tostring(Config.Framework))
end

return Framework