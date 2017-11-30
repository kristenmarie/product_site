require 'rails_helper'

describe 'the add product review process' do
  it 'adds a new review' do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Luna Lovegood'
    fill_in 'Content body', :with => 'This sauce is incredible! It goes very well with my mums yorksire puddings. Also, I have found it useful in potions crafting.'
    fill_in 'Rating', :with => 5
    click_on 'Create Review'
    expect(page).to have_content 'Luna Lovegood'
  end

  it 'Displays error if fields are left blank' do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_link 'Add Review'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
