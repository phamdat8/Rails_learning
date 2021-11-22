def valid? value
    true if value && value > 0 && value <100
end
puts "Nhap so luong phan tu"
array_length = Integer(gets) rescue nil
exit unless valid? array_length
array = Array.new(array_length) do |i| 
    i = rand(1..array_length)
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