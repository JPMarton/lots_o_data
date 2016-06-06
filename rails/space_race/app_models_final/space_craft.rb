class SpaceCraft < ActiveRecord::Base
  has_many :space_crafts

  validates :name, presence: true
  validates :build, presence: true
  validates :payload_capacity, presence: true
end
