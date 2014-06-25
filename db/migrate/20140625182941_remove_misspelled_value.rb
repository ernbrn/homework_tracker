class RemoveMisspelledValue < ActiveRecord::Migration
  def change
    remove_column :assignments, :assinged, :string
  end
end
