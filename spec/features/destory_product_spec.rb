require 'rails_helper'

describe "the destroy product process" do
  it "destroy a product" do
    product = FactoryBot.create(:product)
    visit product_path(product)
    click_link 'Delete'
    expect(page).to have_content 'Product has been deleted!'
  end
end
