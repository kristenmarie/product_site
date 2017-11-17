require 'rails_helper'

describe "the add product process" do
  it "adds a new product" do
    visit root_path
    click_link 'Add Product'
    fill_in 'Name', :with => 'Saucy Sauce'
    fill_in 'Cost', :with => 5
    fill_in 'Origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Saucy Sauce'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
