class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :title
      t.text :description
      t.timestamp :assinged
      t.datetime :due_date
      t.boolean :completed

      t.timestamps
    end
  end
end
