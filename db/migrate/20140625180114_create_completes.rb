class CreateCompletes < ActiveRecord::Migration
  def change
    create_table :completes do |t|

      t.timestamps
    end
  end
end
