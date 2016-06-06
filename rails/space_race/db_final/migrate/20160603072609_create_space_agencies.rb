class CreateSpaceAgencies < ActiveRecord::Migration
  def change
    create_table :space_agencies do |t|
      t.string :abbreviation, null: false
      t.string :name, null: false
      t.string :english_name, null: false
      t.integer :budget, default: 0
      t.date :founded_on

      t.timestamps null: false
    end
  end
end
