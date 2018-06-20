class Order < ApplicationRecord
  belongs_to :pizza
  belongs_to :costumer
  belongs_to :delivery
end
