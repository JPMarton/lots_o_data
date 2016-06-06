class SpaceTraveler < ActiveRecord::Base
  belongs_to :nation
  has_many :assignments
  has_many :missions, through: :assignments

  validates :name, presence: true
end
