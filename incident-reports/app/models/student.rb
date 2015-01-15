class Student < ActiveRecord::Base
	belongs_to :teacher
	has_many :student_incidents
	has_many :incidents, through: :student_incidents

end
