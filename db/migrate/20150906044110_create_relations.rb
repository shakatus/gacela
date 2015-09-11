class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :user, index: true
      t.references :enterprise, index: true
      t.integer :level
      t.boolean :check, default: false
      t.timestamps null: false
    end
  end
end
