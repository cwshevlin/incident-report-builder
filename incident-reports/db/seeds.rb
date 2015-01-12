# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
booleans = [true, false]
grades = ["K", "1", "2", "3", "4", "5"]

for i in 1..30
	Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, grade: grades.sample, iep: booleans.sample)
end

for i in 1..5
	Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, grade: i.to_s )
end


