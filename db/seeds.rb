Product.destroy_all
Review.destroy_all

cost = Random.new


50.times do
  products = Product.create!(name: Faker::Food.ingredient, cost: cost.rand(1..100), origin: Faker::Address.country)

  Product.create!(name: Faker::Commerce.product_name)

  5.times do
    products.reviews.create!(author: Faker::HarryPotter.character, content_body: Faker::Lorem.sentences(4).join(" "), rating: Faker::Number.between(1,5))
  end


end

puts "Seeded #{Product.count} reviews"
puts "Seeded #{Review.count} reviews"
