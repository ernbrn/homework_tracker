class AddAssignedToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :assigned, :datetime
  end
end
