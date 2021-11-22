numbers = [3, 5, -4, 8, 11, 1, -1, 6]
target_sum = 10
check_array = []
numbers.each do |number|
    if check_array.include? number
        print result =  [number, target_sum - number]
        exit
    else
        check_array << target_sum - number
    end
end
