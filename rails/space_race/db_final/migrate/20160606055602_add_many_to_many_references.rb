class AddManyToManyReferences < ActiveRecord::Migration
  def change
    create_join_table :space_agencies, :nations, column_options: { null: true }
    create_join_table :missions, :space_travelers, column_options: { null: true }
  end
end
