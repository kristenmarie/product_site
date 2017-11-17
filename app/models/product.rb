class Product < ActiveRecord::Base
  validates :name, :cost, :origin, :presence => true

  has_many :reviews
end
