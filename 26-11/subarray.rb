def is_sub_array? arrays, checks
    arrays.each do |element|
        checks.shift if element == checks[0]
    end
    checks.empty?
end
a = [5, 1, 22, 26, 6, -1, 8, 10]
b = [1, 6, -1, 10]
puts is_sub_array?(a, b)