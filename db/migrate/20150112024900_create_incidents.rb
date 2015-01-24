class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
    	t.integer :creator_id
    	t.string  :date_time
    	t.string  :expectation_violated
    	t.string  :major_or_minor
    	t.text    :anecdote
    	t.string  :location
      t.string  :context
      t.string  :duration
      t.text   :possible_function
      t.text   :staff_responses
      t.text  :effect_on_behavior

      t.timestamps
    end
  end
end
