numbers = [3, 5, -4, 8, 11, 1, -1, 6]
target_sum = 10
hash = Hash.new
numbers.each_with_index do |number, index|
    if hash.value? number
        print result =  [number, target_sum - number]
        exit
    else
        hash[index.to_s] = target_sum - number
    end
end
