class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :user
      t.boolean :teacher
      t.boolean :student

      t.timestamps
    end
  end
end
