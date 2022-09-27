class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates :title, length: { minimum: 5, maximum: 20 }, uniqueness: true
  validates :image_url, allow_blank: true, format: { with: /\.(?i)(gif|jpg|png)\Z/, message: 'must be a URL for GIF, JPG or PNG image.'}
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
