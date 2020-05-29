# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


names = [
    {"first_name":"Karen","last_name":"Page"},
    {"first_name":"Jessica","last_name":"Jones"},
    {"first_name":"Frank","last_name":"Castle"},
    {"first_name":"Matt","last_name":"Murdock"},
    {"first_name":"Luke","last_name":"Cage"},
    {"first_name":"Danny","last_name":"Rand"},
    {"first_name":"Trish","last_name":"Walker"},
    {"first_name":"Foggy","last_name":"Nelson"},
    {"first_name":"Jeri","last_name":"Hogarth"}
],

ages = [
    {"age":79},
    {"age":12},
    {"age":71},
    {"age":51},
    {"age":14},
    {"age":71},
    {"age":83}
]


name.each do |first_name, last_name|
    Name.create( first_name: first_name, last_name: last_name )
  end

age.each do |age|
    Age.create( age: age )
end