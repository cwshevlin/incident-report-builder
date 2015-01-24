require 'csv'

class Student < ActiveRecord::Base
	belongs_to :teacher
	has_many :student_incidents
	has_many :incidents, through: :student_incidents

	def csv_to_students(csv_file_path)
		CSV.foreach("#{csv_file_path}") do |row|
	  	student = Student.new(first_name: row[1], last_name: row.first, grade: row.last)
	  	student.save unless student.grade.nil?
		end
	end

end
