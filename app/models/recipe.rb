class Recipe < ApplicationRecord
  has_many :ingredient

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :ingredient, presence: true
  validates :price , presence: true, numericality: true
end
