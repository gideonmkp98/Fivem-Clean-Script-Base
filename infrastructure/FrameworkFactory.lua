if Config.Framework == 'esx' then
return require('infrastructure.esx.ESXFramework')
elseif Config.Framework == 'qb' then
return require('infrastructure.qb.QBFramework')
elseif Config.Framework == 'custom' then
return require('infrastructure.custom.CustomFramework')
end

error('Unsupported framework')