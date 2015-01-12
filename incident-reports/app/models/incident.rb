class Incident < ActiveRecord::Base
	belongs_to :creator, class_name 'Teacher'
	has_many :students, through: :student_incidents
	
end
