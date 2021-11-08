def not_valid? a
    return false if a == "0" || a.to_i > 0 || a == "-1"
    true
end

puts "Enter array:"
a = []
min = -1
for i in 0..98 do
    print "Array[#{i}]:"
    a[i] = gets.chomp
    while not_valid?(a[i]) do
        print "Retype Array[#{i}]:"
        a[i] = gets.chomp
    end
    break if a[i] == "-1"
    min = a[i] if i == 0 || min > a[i]
    
end
a.pop()
puts "Array:#{ a.to_s}"
puts "Min = #{min}" unless min == -1




