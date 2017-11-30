require 'rails_helper'

describe "the edit product process" do
  it "edit a product" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_link 'Edit'
    fill_in 'Name', :with => 'Bernie Bots Every Flavored Beans'
    click_on 'Update Product'
    expect(page).to have_content 'Bernie Bots Every Flavored Beans'
  end
end
