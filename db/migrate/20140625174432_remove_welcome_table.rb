class RemoveWelcomeTable < ActiveRecord::Migration
  def change
    drop_table :welcomes
  end
end
