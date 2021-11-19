require 'csv'
require './config.rb'
include Connect
start = Time.now
before_data = ""
index = 0
CSV.foreach('data.csv', 'r') do |rows|
    name = rows[0]
    email = rows[1]
    phone = rows[2]
    address = rows[3]
    birthday = rows[4]
    profile = rows[5].gsub("'","''")
    data = "'#{name}','#{email}','#{phone}','#{address}','#{birthday}','#{profile}'"
    puts ("Imported record #{index}")
    if index.even?
        before_data = data
    else
        DB.exec("INSERT INTO data (name,email,phone,address,birthday,profile)
        VALUES(#{before_data}),(#{data})")
    end
    index += 1
end
time = Time.now - start
puts ("Time:#{time}")

#Time:214.9822089   --100.000 record
# Phần code e biết cách chia nhỏ các file, biết sử dụng foreach là một điểm cộng
# db.exec, phần này a thấy e đang insert từng dòng vào trong db, tức là với 500k lines thì mình insert 500k lần về performance có thể bị ảnh hưởng
# do e hit vào db nhiều quá
# A suggest e là
#   1. sử dụng transaction -> e có thể tìm hiểu nó là gì
#   2. build ra 1 câu sql, nhưng khi nào đủ khoảng 5k lines (do e quyết định), rồi hẵn insert vào db. Như vậy sẽ giảm số lần e tương tác db ah
