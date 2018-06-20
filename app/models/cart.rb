class Cart < ApplicationRecord
  belongs_to :pizza
  validates :pizza, presence:true
end
