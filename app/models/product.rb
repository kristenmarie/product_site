class Product < ActiveRecord::Base
  validates :name, :cost, :origin, :presence => true
  scope :recently_added, -> { order(created_at: :desc).limit(3) }
  scope :made_in_usa, -> { where(origin: "USA") }
  scope :most_reviews, -> {(
    select("products.*, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count desc")
    .first
    )}

  has_many :reviews
end
