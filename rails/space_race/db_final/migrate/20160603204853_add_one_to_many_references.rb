class AddOneToManyReferences < ActiveRecord::Migration
  def change
    add_reference :programs, :space_agency
    add_reference :missions, :program
    add_reference :missions, :space_craft
    add_reference :space_travelers, :nation
  end
end
