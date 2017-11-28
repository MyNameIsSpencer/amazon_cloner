class Review < ApplicationRecord
  validates :comment, :product_id, presence:true
  belongs_to  :product
end
