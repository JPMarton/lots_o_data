class Nation < ActiveRecord::Base
  has_many :space_travelers
  has_and_belongs_to_many :space_agencies

  validates :country_code, presence: true, uniqueness: true
  validates :country_code, length: { maximum: 2 }
  validates :name, uniqueness: true
end
