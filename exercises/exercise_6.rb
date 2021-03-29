require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "joe", last_name: "bob", hourly_rate: 60)
@store1.employees.create(first_name: "Firstina", last_name: "Lasta", hourly_rate: 60)

@store2.employees.create(first_name: "bob", last_name: "joe", hourly_rate: 60)
@store2.employees.create(first_name: "guy", last_name: "lastname", hourly_rate: 60)
@store2.employees.create(first_name: "matthew", last_name: "cook", hourly_rate: 60)