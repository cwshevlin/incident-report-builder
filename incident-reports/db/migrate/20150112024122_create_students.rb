class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.integer :teacher_id
    	t.string  :first_name
    	t.string  :last_name
    	t.string  :grade

      t.timestamps
    end
  end
end
