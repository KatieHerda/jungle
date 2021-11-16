require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    # initial example that ensures that a product with all four fields save
    it "should create a product" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.id).to be_present
      expect(@product).to be_valid
    end

    #validates :name, presence: true
    it "should have a name" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: nil, price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.name).to be_nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Name can't be blank"
    end

    #validates :price, presence: true
    it "should have a price" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: nil, quantity: 10, category: @category)

      @product.save

      expect(@product.price).to be_nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Price can't be blank"
    end

    #validates :quantity, presence: true
    it 'should have a quantity' do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: nil, category: @category)

      @product.save

      expect(@product.quantity).to be_nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Quantity can't be blank"
    end

    #validates :category, presence: true
    it 'should have a category' do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: nil)

      @product.save

      expect(@product.category).to be_nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include "Category can't be blank"
    end 
  end
end
