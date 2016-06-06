class UpgradeJoinTable < ActiveRecord::Migration
  def change
    # DESTROY
    drop_join_table :missions, :space_travelers
    remove_reference :missions, :commander

    # AND BE REBORN
    create_table :assignments do |t|
      t.string :role, null: false, default: 'Spaceflight Participant'
      t.references :space_traveler
      t.references :mission

      t.timestamps null: false
    end
  end
end
