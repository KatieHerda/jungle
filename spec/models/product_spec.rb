require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    # initial example that ensures that a product with all four fields save
    it "should create a product" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.category).to be_present
    end

    #validates :name, presence: true
    it "should have a name" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.name).to eql("Jenga")
    end

    #validates :price, presence: true
    it "should have a price" do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.price).to be_present
      expect(@product.price).to be_a_kind_of(Money)
    end

    #validates :quantity, presence: true
    it 'should have a quantity' do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.quantity).to be_present 
      expect(@product.quantity).to be_a_kind_of(Integer) 
    end

    #validates :category, presence: true
    it 'should have a category' do
      @category = Category.new(name: "Games")
      @product = Product.new(name: "Jenga", price: 123, quantity: 10, category: @category)

      @product.save

      expect(@product.category).to be_present
    end 
  end
end
