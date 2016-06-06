class Mission < ActiveRecord::Base
  belongs_to :program
  belongs_to :space_craft
  has_many :assignments
  has_many :space_travelers, through: :assignments

  validates :name, presence: true, uniqueness: true
end
