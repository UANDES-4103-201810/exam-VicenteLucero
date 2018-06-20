class Pizza < ApplicationRecord
  has_one :recipe
  belongs_to :order

  validates :recipe, presence:true
  validates :crush, presence:true

end
