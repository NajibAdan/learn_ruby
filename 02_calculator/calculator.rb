#write your code here
def add(a,b)
    return a+b
end

def subtract(a,b)
    return a-b
end

def sum(array)
    if (array[0]==nil)
        0
    else
        result = 0
        array.each { |number|
            result = add(result,number)
        }
        result
    end
end

def multiply(arr)
    result = 1
    arr.each{ |number|
        result = number * result
    }
    result
end

def power(a,b)
    a ** b
end

def factorial(limit)
    if (limit==0)
        1
    else
        multiply(buildAnArray(limit))
    end
end

def buildAnArray(startValue)
    arr = []
    count = 1
    while count<=startValue do
        arr.push(count)
        count += 1
    end
    arr
end

puts buildAnArray(1).inspect
