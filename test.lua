local reload = require('reload')
local mymod = require('mymod')

local function test_reload()
    print("BEFORE update foo: ", mymod.foo)
    reload.reload({'mymod'})
    print("AFTER update foo: ", mymod.foo)
end

mymod.foo()
mymod.bar()
test_reload()
mymod.foo()
mymod.bar()
mymod.new_bar()