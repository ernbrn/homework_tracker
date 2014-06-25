class RemoveJoinTable < ActiveRecord::Migration
  def change
    drop_table :assignments_users
  end
end
