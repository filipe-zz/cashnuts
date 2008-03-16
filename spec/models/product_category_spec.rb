require File.dirname(__FILE__) + '/../spec_helper'

describe ProductCategory do
  before(:each) do
    @product_category = ProductCategory.new
  end

  it "should be valid" do
    @product_category.should be_valid
  end
end
