require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
#puts "#{@store1.inspect}" #to see if i have selected the correct store

@store2 = Store.find(2)
#puts "#{@store2.inspect}"

@store1.update(name: "Macy")
#puts "#{@store1.inspect}"