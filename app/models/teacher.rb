class Teacher < ActiveRecord::Base
	has_many :students
	has_many :incidents, foreign_key: :creator_id
end
