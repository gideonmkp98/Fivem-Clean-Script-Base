local Repo = {}
Repo.__index = Repo

function Repo:get(id) error('Not implemented') end
function Repo:getAll() error('Not implemented') end
function Repo:save(entity) error('Not implemented') end

return Repo