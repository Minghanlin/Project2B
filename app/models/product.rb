class Product < ApplicationRecord

has_many :reviews, dependent: :destroy
validates :name,
          presence: true,
          length: { maximum: 30, message: 'Ridiculously long name' }

validates :price,
          presence: true

end
