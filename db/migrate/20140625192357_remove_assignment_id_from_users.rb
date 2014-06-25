class RemoveAssignmentIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :assignment_id, :integer
  end
end
