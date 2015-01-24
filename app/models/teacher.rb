class Teacher < ActiveRecord::Base
	has_many :students
	has_many :incidents, foreign_key: :creator_id
	has_one :school, foreign_key: :principal_id
	
end
