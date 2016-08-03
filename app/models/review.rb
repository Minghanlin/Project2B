class Review < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  belongs_to :product
  validates :product_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
