class RemoveNameFromAssignment < ActiveRecord::Migration
  def change
    remove_column :assignments, :name, :string
  end
end
