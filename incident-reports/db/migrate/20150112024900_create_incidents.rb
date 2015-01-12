class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
    	t.integer :creator_id
    	t.string  :location
    	t.string  :date
    	t.string  :time
    	t.string  :context
    	t.text    :narrative

      t.timestamps
    end
  end
end
