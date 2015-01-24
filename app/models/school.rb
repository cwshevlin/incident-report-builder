class School < ActiveRecord::Base
	has_many :teachers
	belongs_to :principal, class_name: 'Teacher'

end
