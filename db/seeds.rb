# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
grades = ["K", "1", "2", "3", "4", "5"]
locations = ["Lunchroom", "Cafeteria", "Hallway", "Classroom", "Recess", "Computer Lab", "Science Lab", "Bilingual Room", "Counselor's Office"]
contexts = ["Small Group", "Whole Class", "Transition Time", "Walking through hallways", "Recess", "Lunch", "Independent Work"]
durations = ["5 minutes", "7 minutes", "10 minutes", "13 minutes", "24 minutes", "1 hour", "2 hours", "4 days"]
expectations = ["Successful", "Organized", "Achieving", "Respectful"]
severity = ["minor", "major"]
motivations = ["Obtain peer attention", "Obtain adult attention", "Obtain items/activities", "Obtain sensory input", "Avoid peers", "Avoid adult", "Avoid task/activity", "Avoid sensory input", "Emoting", "Unable to determine", "Other"]
consequences = ["In-school suspension", "Out-of-school suspension", "Phone call home", "No TV for a month"]
effects = ["Student stopped behavior", "Student continued behavior"]


def random_teacher
	id = rand(Teacher.count)
	Teacher.offset(id).first
end

def random_incident
	id = rand(Incident.count)
	Incident.offset(id).first
end

def random_student
	id = rand(Student.count)
	Student.offset(id).first
end

for i in 1..5
	Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email )
end

	Teacher.create(first_name: "Colin", last_name: "Shevlin", email: "cwshevlin@gmail.com")

for i in 1..30
	student = Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, grade: grades.sample)
	teacher = Teacher.find_by_id(rand(5)+1)
	student.teacher_id = teacher.id
	student.save
end

30.times do
	Incident.create(creator_id: random_teacher.id, location: locations.sample, date_time: "#{Faker::Time.backward(14, :evening)}", context: contexts.sample, anecdote: Faker::Lorem.paragraph(2, true, 3), expectation_violated: expectations.sample, major_or_minor: severity.sample, duration: durations.sample, possible_function: motivations.sample, staff_responses: consequences.sample, effect_on_behavior: effects.sample)
end

30.times do 
	student_incident = StudentIncident.create
	incident = random_incident
	student = random_student
	student_incident.incident_id = incident.id
	student_incident.student_id = student.id
	student_incident.save
end








