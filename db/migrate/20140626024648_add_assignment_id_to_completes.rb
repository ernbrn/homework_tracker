class AddAssignmentIdToCompletes < ActiveRecord::Migration
  def change
    add_column :completes, :assignment_id, :integer
  end
end
