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

# Code e viết ngắn gọn, dễ đọc
# Em dùng include? để đi check number có nằm trong mảng check_array kg thì về bản chất cũng như e sử dụng vòng for thứ 2 để check nhé
