class Recipe < ApplicationRecord
  has_many :ingredient

  validates :name, presence: true
  validates :ingredient, presence: true
  validates :price , presence: true, numericality: true
end
