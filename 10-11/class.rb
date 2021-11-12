require "byebug"

class Employee
  attr_accessor :stt, :id, :name, :position
  def initialize(info = {}) 
    @id = info[:id] 
    @name = info[:name]
    @birth = info[:birth]
    @position = info[:position]
    @wage = info[:wage]
    @workday = info[:workday]
  end


  def not_valid?
    # return true if not_num?(@id) || not_num?(@birth) || not_num?(@wage) || not_str(@name) || not_str?(@position) || not_day?(@workday)
    return true unless @id.match(/^[0-9]\d*$/)
    return true unless @birth.match(/^[0-9]\d*$/)
    return true unless @wage.match(/^[0-9]\d*$/)
    return true unless @name.match(/^[A-Za-z_.]+$/)
    return true unless @position.match(/^[A-Za-z_.]+$/)
    return true unless @workday.match((/^[0-9]\d*$/)
    false
  end

  def age 
    Time.now.year - @birth.to_i
  end

  def salary
    @wage.to_i*@workday.to_i
  end

  def input
    puts "nhap id: "
    @id = gets
    puts "nhap ten: "
    @name = gets.chomp
    puts "nhap nam sinh: "
    @birth = gets
    puts "nhap chuc vu: "
    @position = gets.chomp
    puts "nhap luong 1 ngay: "
    @wage = gets
    puts "nhap so ngay lam: "
    @workday = gets
  end
end

user = Employee.new
user.input
while user.not_valid? do
  puts "=================================================="
  puts "nhap lai"
  user.input
end
puts "=================================================="
puts "ID: #{user.id}"
puts "Ten: #{user.name}"
puts "Tuoi: #{user.age}"
puts "Chuc vu: #{user.position}"
puts "Luong: #{user.salary}"



