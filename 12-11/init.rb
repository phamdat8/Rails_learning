require './config.rb'
require 'csv'
include Connect

profile= "Like TV 100\", Some special charactor: \\ / ' $ ~ & @ # ( ; \""
name = "Nguyen Van A"
phone = "123456789"
address = "Ho Chi Minh city"
day_of_birth = "2000/01/01"

CSV.open('data.csv','wb') do |csv|
    for i in 1..100000
        email = "email#{i}@gmail.com"
        csv << [name,email,phone,address,day_of_birth,profile]
    end
end

DB.exec("create table data (name varchar(50), email varchar(50), phone varchar(50), address varchar(50), birthday varchar(50), profile varchar(100));")