class AddUserIdToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :user_id, :integer
  end
end
