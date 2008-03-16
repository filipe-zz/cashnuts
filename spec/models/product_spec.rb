require File.dirname(__FILE__) + '/../spec_helper'

describe Product do
  fixtures :products, :product_categories, :distributors, :sales
  
  before(:each) do
    @valid_attr = {
      :name => "Camisa",
      :manufacturer => "Adidas",
      :price => 1.5,
      :product_category => product_categories(:camisa),
      :distributor => distributors(:transporte)
    }
    
    @product = Product.new
  end
  
  it "should have a name" do
    @product.attributes = @valid_attr.except(:name)
    @product.should have(1).error_on(:name)
  end
  
  it "should have a price" do
    @product.attributes = @valid_attr.except(:price)
    @product.should have(1).error_on(:price)
  end
  
  it "should have a category" do
    @product.attributes = @valid_attr.except(:product_category)
    @product.should have(1).error_on(:product_category_id)
  end
  
  it "should be related to Sales" do
    @product.sales << sales(:one)
    @product.sales.should include(sales(:one))
  end

  it "should be valid" do
    @product.attributes = @valid_attr
    @product.should be_valid
  end
end
