require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


Store.create(
  name: "Surrey",
  annual_revenue: "224000",
  mens_apparel: "f",
  womens_apparel: "t"
)

 Store.create(
  name: "Whistler",
  annual_revenue: "1900000",
  mens_apparel: "t",
  womens_apparel: "f"
)

Store.create(
  name: "Yaletown",
  annual_revenue: "430000",
  mens_apparel: "t",
  womens_apparel: "t"
)

puts Store.count

@mens_stores = Store.where(mens_apparel: "t").each do |store|
  puts "#{store.name}"
  puts "#{store.annual_revenue}"
end

@womens_stores = Store.where("annual_revenue < ? AND womens_apparel = ?", 1000000, "t").each do |store|
  puts "#{store.name}"
  puts "#{store.annual_revenue}"
end

