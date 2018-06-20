class DeliveryInfo < ApplicationRecord
  belongs_to :order

  validates :phone, presence: true, numericality: true
  validates :address_line1, presence: true
  validates :address_line2, presence: true
end
