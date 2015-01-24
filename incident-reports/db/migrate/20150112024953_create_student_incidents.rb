class CreateStudentIncidents < ActiveRecord::Migration
  def change
    create_table :student_incidents do |t|
    	t.integer :student_id
    	t.integer :incident_id

      t.timestamps
    end
  end
end
