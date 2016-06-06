class SpaceAgency < ActiveRecord::Base
  has_many :programs
  has_many :missions, through: :programs
  has_many :space_travelers, through: :missions
  has_and_belongs_to_many :nations

  validates :name, uniqueness: true, null: false
end
