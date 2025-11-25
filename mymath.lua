mmath = {}

function mmath.add(x, y)
    return x + y
end

function mmath.power(num1, num2)
    return num1 ^ num2
end

function mmath.multiply(num1, num2)
    return num1 * num2
end

function mmath.divide(num1, num2)
    if num2 == 0 then
        return nil, "Error: Division by zero"
    end
    return num1 / num2
end

return mmath
