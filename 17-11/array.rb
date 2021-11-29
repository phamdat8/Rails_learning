def valid? value
    true if value && value > 0 && value <100
end
puts "Nhap so luong phan tu"
array_length = Integer(gets) rescue nil
exit unless valid? array_length
array = Array.new(array_length) do |i| 
    i = rand(1..9)
end
current_array = []
array.each_with_index do |e, index|
    if index == array_length - 1
        print current_array << e
        exit
    end
    current_array << e
    if e > array[index+1]
        print current_array
        current_array = []     
    end
end

# Code e viết ngắn gọn, trình bày dễ nhìn, thuật toán ok 
# Anh có vài góp ý cho e về cách trình bày:
# 1. Nếu user input sai thì chương trình e exit mà kg bắt nhập lại 
# 2. Hàm valid? của e có thể viết ngắn gọn value && value > 0 && value <100 mà kg cần true if
# 3. Biến array chứa nhiều phần tử -> nên là số nhiều
# 4. Khi output ra, em nên xuất ra mảng được gen ra luôn nhé.
