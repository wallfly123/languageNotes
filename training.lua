-- LUA: BEGINNER TO ADVANCED






-- Outputs and Comments
print("Hello" .. "Jack") -- Concatenate with .. 
-- Comments are with two dashes
--[[
This is a 
Multi line 
Comment use brackets to use multiple lines 
]]
-- Data Types and Variables
nil, nil == nothing
number = 42 -- This is a Number Variable
float = 3.14 -- This is a Float Variable
string = "This is a String Variable"
boolean = true This is a Boolean Variable (true or false)
table = { "This", "is", "a", "Table" }
local a = 2
print(a + 5)

local name = "jack"

name = nil -- makes name = to nothing, or reassign it


[[
This
is
a
multi-line
string
]]
local old = true

-- make something global by leaving out local before the variable or function
-- Math in Lua
local str = "22" 
print(tonumber(str) + 3) makes str a number
add with +
subtract with -
multiply with *
divide with /
exponent with ^
modulus with %
using () gives precedence to the inside
BODMAS applies to lua
math library:
math.pi = 3.14
math.random() = random number between 0 and 1
math.randomseed(number) = sets the seed for random numbers
math.floor(number) = rounds down
math.ceil(number) = rounds up
math.sqrt(number) = square root
math.abs(number) = absolute value
os.time() = current time in seconds since 1970
math.random(number) = random number between 1 and number
math.random(min, max) = random number between min and max
math.min(list of numbers) = returns the smallest number
math.max(list of numbers) = returns the largest number
math.sin(number) = sine of number (in radians)
math.cos(number) = cosine of number (in radians)
math.tan(number) = tangent of number (in radians)
math.log(number) = natural logarithm of number

-- Strings in Lua
print(#string) = length of string
string.upper(string) = makes string uppercase
string.lower(string) = makes string lowercase
tostring(variable) = makes variable a string
tonumber(string) = makes string a number
toboolean(variable) = makes variable a boolean
tofloat(string) = makes string a float
print("Hello\nWorld") = new line
print("Hello\tWorld") = tab space
print("Hello\vWorld") = vertical tab
print("Hello\rWorld") = carriage return
print("Hello\\World") = backslash
print("He said \"Hello\"") = double quotes
print('He said \'Hello\'') = single quotes
string.len(string) = length of string
string.sub(string, start, end) = substring from start to end
string.find(string, substring) = finds substring in string
string.gsub(string, old, new) = replaces old with new in string
string.char(number) = converts number to character
string.byte(string, position) = converts character at position to number
string.rep(string, number) = repeats string number times
string.format(format, values) = formats string with values
string.match(string, pattern) = matches pattern in string
string.reverse(string) = reverses string


-- If Statements
local true, false = true, nil
if true then
    print("This is true")
end
if false then
    print("This is false")
end
>
<
>=
<=
==
~=
if, elseif, else
local age = 15
if age > 17 then
    print("You may enter") 
end
if age > 17 and/or age < 60(or)10 then
    print("You may enter")
end

and = both conditions must be true
or = one condition must be true

if age ~= 20 then
    print("You may not enter")
end
if age == 20 then
    print("You may enter")
end
if not (age < 18) then
    print("You may enter")
end

not true = false
not false = true

if age > 20 then
    print("You are old")
else
    print("You are young")
end

if age > 20 then
    print("You are old")
elseif age > 10 then
    print("You are not old or young")
else
    print("You are young")
end

elseif can be used multiple times
if statements can be nested (put inside each other)

local old
if age > 30 then
    old = true
else
    old = false
end
print(old)

local old = age > 30 and true or false


-- Loops in Lua
for i = 1, 10, 1 do
    print(i)
end
(start, end, step (reverse by making step negative))

local start_val, end_val step_val = 1, 10, 1
for i = start_val, end_val, step_val do
    print(i)
end

local arr = {2, 3, 45, 65676, 34, 21, 2, 30}
for i = i, #arr do
    print(arr[i])
end
(iterate through a table with # to get length)

local peeps = 10

while peeps > 0 do
    peeps = peeps - 1
    print("People left at party: " .. peeps)
end

local run = true
local runtime = 0

while run do
    print("running")

    if runtime == 10 then
        run = false
    end
    runtime = runtime + 1
end

local x = 1

repeat
    print("Hey there!")
    x = x + 1
until x > 10
-- (repeats at least once, then checks condition)


-- User Input in Lua
io.write("Enter your name: ") = prints without new line
local ans = io.read() = reads input from user
print("Hello " .. ans)

local num1, num2 = 10, 5
local true_ans = num1 + num2

io.write("Input " .. num1 .. " + " .. num2 ..":")
local ans = io.read()

if tonumber(ans) == true_ans then
    print("Ding! Ding! Ding!")
else 
    print("Your Answer: " .. ans .. " is incorrect.")
end


-- Tables in Lua
local arr = {10, true, "hello world", 2.4}

print(arr[index]) = prints value at index (starts at 1)

table.sort(table) = sorts table
table.insert(table, value) = inserts value at end of table
table.insert(table, index, value) = inserts value at index
table.remove(table) = removes last value from table
table.remove(table, index) = removes value at index
table.concat(table, separator) = concatenates table values with separator
table.maxn(table) = returns largest index in table
table.unpack(table) = returns all values in table
table.replace(table, index, value) = replaces value at index with value

for i = 1, #arr do
    print(arr[i])
end

local arr = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}

print(arr[1][1]) = accesses value inside of first table's first index

for i = 1, #arr do
    for j = 1, #arr[1] do
        print(arr[i][j])
    end
end
-- (nested loops to access multi-dimensional table)


-- Functions in Lua
local function displayAge(age)
    age = age or 5
    print("You are " .. age .. " years old")
    print("You will be " .. age + 2 .. " years old")
    print("You were " .. age - 1 .. " years old last year")
    print()
end

displayAge()
displayAge(25)

z = 10
local function sum(num1, num2)
    local y = num1 + z
    return y
end

local x = sum(2, 3)
print(x)

local add10 = function (number)
    local outcome = 10 + number
    return outcome
end

local _, output = add10(20)

print("Had 10 added to it: " .. output)

local function counter(number, end_num)
    local count = number + 1

    if (count < end_num) then
        print(count)
        return counter(count, end_num)
    end
    return count
end

print(counter(10, 15))

local function counter()
    local count = 0

    return function()
        count = count + 1
        return count
    end
    return counter
end

local x = counter()

print(x()) -- number of calls makes it count up that many times

local function sum(...) -- makes it a table of arguments
    local sums = 0
    
    for key, value in pairs({...}) do
        sums = sum + value
    end

    return sums
end

print(sum(10, 5, 10))


-- Co-routines in Lua
local function routine_1 = coroutine.create(
    function ()
        for i = 1, 10 , 1 do
            print("Routine 1): " .. i)

            if i == 5 then
                coroutine.yield()
            end
        end
    end
)

local routine_func = function ()
    for i = 1, 20 do
        print("Routine 2): " .. i)

    end
end

local routine_2 = coroutine.create(routine_func)

coroutine.resume(routine_1)
coroutine.resume(routine_2)

if coroutine.status(routine_1) ~= "suspended" then
    coroutine.resume(routine_1)
end

print(coroutine.status(routine_1))


-- Working with Files in Lua --
io.output("myFile.txt") -- makes new file or overwrites the file if it already exists
io.input("myFile.txt") -- opens file for reading

local file = io.read(number) -- reads number characters from file
local file = io.read("*number") -- reads 2 characters from file
local file = io.read("*line") -- reads line from file
local file = io.read("*all") -- reads whole file

io.write("Hello World!")

io.close()

print(file)

local file = io.open("myFile.txt", "w") -- write mode
local file = io.open("myFile.txt", "a") -- append mode
local file = io.open("myFile.txt", "r") -- read mode

local reads = file:read("*all") -- reads whole file

file:write("\nJack: He is old.\nnetsu: Yeah, I know.")

file:close()

print(reads)


-- The OS Module in Lua
local past = os.time({
    year = 2000,
    month = 10,
    day = 1
    hour = 13,
    min = 20
    sec = 10
})) -- time since 1970

print(os.time() - past) -- time since past date in seconds
print(os.difftime(), past) -- difference between two times
print(os.date()) -- current date and time
print(os.date("%Y-%m-%d %H:%M:%S")) -- formatted date
print(os.date("%A, %B %d, %Y")) -- formatted date
print(os.date("%I:%M %p")) -- formatted time

print(os.getenv("PATH")) -- gets environment variable

os.rename("oldname.txt", "newname.txt") -- renames file
os.remove("file.txt") -- deletes file
os.execute("command") -- executes command

local start = os.clock() -- gets CPU time used

for i = 1, 100000000 do
    local x == 10
end

print(os.clock() - start) -- gets CPU time used since start

for i = 1, 10 do
    print(i)
    if i == 5 then
        os.exit() -- exits program
    end
end


-- Custom Modules in Lua
 local mod = require("mymath")

 print(mod.add(5, 10))
 print(mod.power(2, 5))
 print(mod.multiply(4, 6))

--[[
OOP in Lua
Object Oriented Programming:
]]
local t = {
    name = "Jack",
    age = 18,
    friends = {"Fred"}
}

print(t.name) -- accesses name property

local function Pet(name)
    name = name or "Luis"
    return {
        name = name,
        status = "hungry",

        feed = function(self)
            print(name .. " is fed")
            self.status = "full"
        end
    }
end

local cat = Pet("Kitty")
local dog = Pet()

print(cat.status)
cat:feed()
print(dog.status)
cat = Pet("Las")

local function Dog(name, breed)

    local dog = Pet(name)

    dog.breed = breed
    dog.loyalty = 0

    dog.isLoyal = function (self)
        return self.loyalty >= 10
    end

    dog.feed = function (self)
        print(name .. " is fed")
        self.status = "full"
        self.loyalty = self.loyalty + 5
    end

    dog.bark = function (self)
        print("Woof! Woof!")
    end

    return dog
end

local lassy = Dog("Lassy", "Poodle")
lassy:feed()
lassy:feed()
if lassy:isLoyal() then
    print("Will protect against intruders")
else
    print("Will not protect against intruders")
end

print(lassy.breed)
lassy:bark()


-- MetaMethods in Lua
local function addTableValues(x, y)
    return x.num + y.num
end

local function addTableValues(v1, v2)
    return {x = v1.x + v2.x, y = v1.y + v2.y}
end

local metatable = {
    __add = addTableValues
    __sub = function (x, y)
        return x.num - y.num
    end
}

local tbl1 = { num = 50 }
local tbl2 = { num = 10 }

setmetatable(tbl1, metatable)

local ans = tbl1 + tbl2

local ans = tbl1 + tbl2

local ans2 = addtableValues(tbl1, tbl2)

local vec = tbl1 + tlb2

print("x: " .. vec.x .. "\ny: " .. vec.y) 

__add = +
__sub = -
__mul = *
__div = /
__mod = %
__pow = ^
__concat = ..
__len = #
__eq = ==
__lt = <
__le = <=
__gt = >
__ge = >=
