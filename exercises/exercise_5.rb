require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts Store.sum(:annual_revenue)
@average_revenue = Store.sum(:annual_revenue)/Store.count
puts "#{@average_revenue}"

#Output the number of stores that are generating $1M or more in annual sales.
#Hint: Chain together where and size (or count) Active Record methods.

puts Store.where("annual_revenue > ? ", 1000000).count