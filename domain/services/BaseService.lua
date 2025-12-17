local BaseService = {}
BaseService.__index = BaseService

function BaseService:new(deps)
    return setmetatable(deps or {}, self)
end

return BaseService