Stack = {}
Stack.__index = Stack

function Stack.new()
    local self = setmetatable({},Stack)
    self.items = {}
    return self
end
 
function Stack:push(input)
	table.insert(self.items,input)
end

function Stack:pop()
	assert(#self.items > 0, "No Items")
	local output = self.items[#self.items]
	self.items[#self.items] = nil
	return output
end

function Stack:size()
	return #self.items
end

function Stack:peek()
    assert(#self.items > 0, "No Items")
	return self.items[#self.items]
end

return Stack