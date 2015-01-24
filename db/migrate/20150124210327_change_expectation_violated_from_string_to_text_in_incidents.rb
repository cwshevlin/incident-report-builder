class ChangeExpectationViolatedFromStringToTextInIncidents < ActiveRecord::Migration
  def up
    change_column :incidents, :expectation_violated, :text
  end

  def down
    change_column :incidents, :expectation_violated, :string
  end
end
