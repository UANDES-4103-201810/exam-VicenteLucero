class Order < ApplicationRecord
  has_many :pizza
  has_one :delivery

  validates :pizza, presence:true
  validates :delivery, presence:true
  validates :payment_method, presence:true
end
