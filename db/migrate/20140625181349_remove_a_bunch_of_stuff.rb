class RemoveABunchOfStuff < ActiveRecord::Migration
  def change
    remove_column :assignments, :assigned, :datetime
    remove_column :assignments, :homework_url, :string
    remove_column :assignments, :completed, :boolean
  end
end
