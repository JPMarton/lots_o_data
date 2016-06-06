class CreateSpaceTravelers < ActiveRecord::Migration
  def change
    create_table :space_travelers do |t|
      t.string :name, null: false
      t.string :sex
      t.date :born_on
      t.date :died_on

      t.timestamps null: false
    end
  end
end
