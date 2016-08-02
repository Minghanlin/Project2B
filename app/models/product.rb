class Product < ApplicationRecord

has_many :reviews, dependent: :destroy
validates :name,
          presence: true,
          length: { maximum: 30, message: 'Ridiculously long name' }
mount_uploader :picture, PictureUploader
validates :price,
          presence: true
validates :brand,
          presence: true, length: { maximum: 30 }
validates :category,
          presence: true, length: { maximum: 30 }

private

# Validates the size of an uploaded picture.
  def picture_size
      if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
  end
end

end
