class AddCommanderToMissions < ActiveRecord::Migration
  def change
    add_reference :missions, :commander
  end
end
