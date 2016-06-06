class CreateSpaceCrafts < ActiveRecord::Migration
  def change
    create_table :space_crafts do |t|
      t.string :name, null: false
      t.string :build, null: false
      t.integer :payload_capacity, null: false

      t.timestamps null: false
    end
  end
end
