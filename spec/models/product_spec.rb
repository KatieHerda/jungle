require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    # initial example that ensures that a product with all four fields save
    it "creates a product" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save
      expect(@product.category).to be_present
    end

  
  end
end
