class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :level

      t.timestamps null: false
    end
  end
end
