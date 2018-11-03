local Class = {}
Class.__index = Class

function Class:new()
    print('Class:new() called !!!')
end


-- Create a new Class type from our base class
function Class:derive(type)
    local cls = {}
    cls.type = type
    cls.__index = cls
    cls.super = self
    setmetatable(cls, self)
    return cls
end


function Class:__call(...)
    local inst = setmetatable( {}, self)
    inst:new(...)
    return inst
end



function Class:get_type()
    return self.type
end


local Player = Class:derive("Player")

function Player:new(name)
    print('Hello ' .. name)
end

local plyr1 = Player('Mark')


return Class

