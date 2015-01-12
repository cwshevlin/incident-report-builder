class CreateStudentIncidents < ActiveRecord::Migration
  def change
    create_table :student_incidents do |t|
    	t.integer :student_id
    	t.integer :incident_id
    	t.string :duration
    	t.string :expectation_violated
    	t.string :major_or_minor
    	t.string :motivation
    	t.text   :consequence

      t.timestamps
    end
  end
end
