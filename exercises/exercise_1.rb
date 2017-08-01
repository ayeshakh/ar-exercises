require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
end

  Store.create(
    name: "Burnaby",
    annual_revenue: "300000",
    mens_apparel: "f",
    womens_apparel: "t"
  )

   Store.create(
    name: "Richmond",
    annual_revenue: "1260000",
    mens_apparel: "f",
    womens_apparel: "t"
  )

  Store.create(
    name: 'Gastown',
    annual_revenue: "190000",
    mens_apparel: "t",
    womens_apparel: "f"
  )


puts Store.count