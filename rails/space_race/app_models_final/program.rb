class Program < ActiveRecord::Base
  belongs_to :space_agency
  has_many :missions

  validates :name, presence: true
end
