require File.dirname(__FILE__) + '/../spec_helper'

describe ProductCategory do
  fixtures :product_categories, :products
  
  before(:each) do
    @product_category = ProductCategory.new
  end
  
  it "should have a name" do
    @product_category.name = nil
    @product_category.should have(1).error_on(:name)
  end
  
  it "should be related to products" do
    @product_category.products << products(:camisa)
    @product_category.products.should include(products(:camisa))
  end

  it "should be valid" do
    @product_category.name = "Adidas"
    @product_category.should be_valid
  end
end
