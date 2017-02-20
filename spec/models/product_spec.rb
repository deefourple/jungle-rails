require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "creates a new product" do
      @product = Product.new
      expect(@product).to be_present
    end

    it "validates a name" do
      @name = Product.name
      expect(@name).to be_present
    end

    it "validates a price" do
      @price = Product.new
      expect(@price).to be_nil
    end

    it "validates a quantity" do
      @quantity = Product.new
      expect(@quantity).to be_present
    end

    it "validates a category" do
      @category = Product.new
      expect(@category).to be_present
    end
  end
end

