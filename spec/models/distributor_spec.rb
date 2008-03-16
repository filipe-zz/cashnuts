require File.dirname(__FILE__) + '/../spec_helper'

describe Distributor do
  fixtures :distributors, :cities, :products
  
  before(:each) do
    @valid_attr = {
      :name => "WalMart",
      :address => "Av Dona Constanca, 1778",
      :contact => "Joao Silva",
      :phone => "82 9988-1122",
      :email => "joao@walmart.com",
      :city => cities(:maceio)
    }
    @distributor = Distributor.new
  end
  
  it "should have a name" do
    @distributor.attributes = @valid_attr.except(:name)
    @distributor.should have(1).error_on(:name)
  end
  
  it "should have a city" do
    @distributor.attributes = @valid_attr.except(:city)
    @distributor.should have(1).error_on(:city)
  end
  
  it "should be related to products" do
    @distributor.products << products(:camisa)
    @distributor.products.should include(products(:camisa))
  end

  it "should be valid" do
    @distributor.attributes = @valid_attr
    @distributor.should be_valid
  end
end
