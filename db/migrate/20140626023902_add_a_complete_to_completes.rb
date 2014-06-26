class AddACompleteToCompletes < ActiveRecord::Migration
  def change
    add_column :completes, :assignment_completed, :boolean
  end
end
