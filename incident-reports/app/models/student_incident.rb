class StudentIncident < ActiveRecord::Base
	belongs_to :student
	belongs_to :incident
end
