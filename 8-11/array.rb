def not_valid? a # Tên tham số cần có ý nghĩa
    return false if a == "0" || a.to_i > 0 || a == "-1" # a == "0" || a == "-1" e có thể viết gọn ["0", "-1"].include?(a)
    true
end # Hàm này e có thể viết gọn hơn trong 1 dòng không cần return, vd : !(["0", "-1"].include?(a) || a.to_i > 0)

puts "Enter array:"
a = [] # Không nên đặt tên biến thiếu ý nghĩa như a, b, c, trừ trường hợp trong vòng lặp
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

# Chương trình của e viết gọn gàng, tên hàm not_valid? trả về true/false có dấu ? là một điểm cộng
# Tuy nhiên thì vẫn còn lỗi nếu user input không đúng
# Vd
# Array[0]:9 abcabc
# Array[1]:5 + 3
# Array[2]:-1
# Array:["9 abcabc", "5 + 3"]
# Min = 5 + 3


