local BaseEntity = {}
BaseEntity.__index = BaseEntity

function BaseEntity:new(data)
    return setmetatable(data or {}, self)
end

return BaseEntity