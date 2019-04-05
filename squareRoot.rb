# Function squares(x,n) that starts with a number (x) and returns an array of length (n) with squares of the previous number. 
# If n is negative or zero, returns an empty array/list.


def squares (x, n)
    starting_number = x
    repeate = n
    array = []


    if n == 0 || n == nil
        return array
    end

    array.push(starting_number)


    i = 1
    until i == repeate
    root_index = starting_number * starting_number
    starting_number = root_index
    array.push(starting_number)
       i += 1
    end


    return array
end

 puts squares(2, 5)
 puts squares(3, 3)
 puts squares(4, 0)

