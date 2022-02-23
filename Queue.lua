Queue = {}
Queue.__index = Queue

function Queue.new()
    local self = setmetatable({},Queue)
    self.items = {}
    return self
end
 
function Queue:add(input)
	table.insert(self.items,1,input)
end

function Queue:remove()
	assert(#self.items > 0, "No Items")
	return table.remove(self.items)
end

function Queue:size()
	return #self.items
end

function Queue:peek()
    assert(#self.items > 0, "No Items")
	return self.items[1]
end

return Queue