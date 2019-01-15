require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)
@store1.employees.create(
  first_name: "Bobert",
  last_name: "Thompkins",
  hourly_rate: 100
)
@store1.employees.create(
  first_name: "Com",
  last_name: "Truise",
  hourly_rate: 100
)

@store2.employees.create(
  first_name: "Peter",
  last_name: "Parker",
  hourly_rate: 42
)
@store2.employees.create(
  first_name: "Homer",
  last_name: "Simpson",
  hourly_rate: 50
)
@store2.employees.create(
  first_name: "Albert",
  last_name: "Einstein",
  hourly_rate: 69
)

puts "There are #{Employee.count} employees in the db."
