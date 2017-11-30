class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, :product_id, :presence => true
  validates :rating, numericality: { greaten_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :content_body, length: { within: 50..250 }

  belongs_to :product
end
