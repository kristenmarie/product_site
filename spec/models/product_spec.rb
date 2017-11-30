require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :origin }

  it { should have_many :reviews }

  describe '.recently_added' do
    it 'should return 3 most recently added products' do
      product1 = FactoryBot.create(:product)
      product2 = FactoryBot.create(:product)
      product3 = FactoryBot.create(:product)
      product4 = FactoryBot.create(:product)
      expect(Product.recently_added).to eq([product4, product3, product2])
    end
  end
end
