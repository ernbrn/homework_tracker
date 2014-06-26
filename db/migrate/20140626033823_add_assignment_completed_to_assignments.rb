class AddAssignmentCompletedToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :assignment_complete, :boolean
  end
end
