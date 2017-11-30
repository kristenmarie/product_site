FactoryBot.define do
  factory :product do
    name 'Saucy Sauce'
    cost 5
    origin 'USA'
  end

  factory :review do
    author 'Mark'
    content_body 'This sauce is bananas without the bananas!'
    rating 5
    product_id 1
  end
end
