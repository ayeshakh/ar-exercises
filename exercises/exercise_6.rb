require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ali", last_name: "Shahid", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 60)

@store2.employees.create(first_name: "Alex", last_name: "Duggar", hourly_rate: 70)
@store2.employees.create(first_name: "Bob", last_name: "Miles", hourly_rate: 50)
@store2.employees.create(first_name: "Terry", last_name: "Zander", hourly_rate: 60)