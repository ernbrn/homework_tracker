class AddFieldToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :homework_url, :string
  end
end
