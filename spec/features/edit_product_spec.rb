require 'rails_helper'

describe "the edit product process" do
  it "edit a product" do
    visit root_path
    click_link 'Add Product'
    fill_in 'Name', :with => 'Saucy Sauce'
    fill_in 'Cost', :with => 5
    fill_in 'Origin', :with => 'USA'
    click_on 'Create Product'
    click_on 'Saucy Sauce'
    click_link 'Edit'
    expect(page).to have_content 'Edit'
  end
end
