require './config.rb'
include Connect
DB.exec("delete from data")