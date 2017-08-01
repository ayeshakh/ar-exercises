require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3}
  validates :annual_revenue, presence: true,
                             numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_men_or_women_apparel

  def must_carry_men_or_women_apparel
    if (not mens_apparel.present?) && (not womens_apparel.present?)
      errors.add(:apparel, 'must carry atleast one apparel')
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates  :first_name, presence: true
  validates  :last_name, presence: true
  validates  :hourly_rate,presence: true,
                        numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end


puts "Enter a store name"
input = gets.chomp

@store = Store.create(
    name: input
)

@store.valid?
@store.errors.messages.each {|message| p message}




