class AddAssignedToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :assigned, :timestamp
  end
end
