class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :name, null: false
      t.string :country_code, null: false

      t.timestamps null: false
    end
  end
end
