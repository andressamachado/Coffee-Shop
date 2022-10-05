class Product < ApplicationRecord
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image_url, presence: true
  validates :title, length: { minimum: 5, maximum: 20 }, uniqueness: true
  validates :image_url, allow_blank: true, format: { with: /\.(?i)(gif|jpg|png)\Z/, message: 'must be a URL for GIF, JPG or PNG image.'}
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
