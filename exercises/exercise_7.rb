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

class Employees < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_inclusion_of :hourly_rate, in: 40..200
  validates_presence_of :store_id
end

class Store < ActiveRecord::Base
  validates_length_of :name, minimum: 3
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
end

puts "Input a new store name!"
@user_input = gets.chomp


Store.create(name: @user_input)
