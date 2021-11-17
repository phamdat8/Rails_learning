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