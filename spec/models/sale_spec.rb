require File.dirname(__FILE__) + '/../spec_helper'

describe Sale do
  fixtures :sales, :clients, :products
  
  before(:each) do
    @valid_attr = {
      :client => clients(:walmart),
      :product => products(:camisa),
      :date => Date.today,
      :price => 1.5,
      :quantity => 1
    }
    
    @sale = Sale.new
  end
  
  it "should have a client" do
    @sale.should have(1).error_on(:client_id)
  end
  
  it "should have product" do
    @sale.should have(1).error_on(:product_id)
  end
  
  it "should have a date" do
    @sale.should have(1).error_on(:date)
  end
  
  it "should have a price" do
    @sale.should have(1).error_on(:price)
  end
  
  it "should have a quantity" do
    @sale.should have(1).error_on(:quantity)
  end
  
  it "should calculate the total price" do
    @sale.price = 15
    @sale.quantity = 10
    
    @sale.total_price.should eql(150.0)
  end
  
  it "should return 0 as total price if either price or quantity are nil" do
    @sale.total_price.should eql(0)
    
    @sale.price = 10
    @sale.total_price.should eql(0)
    
    @sale.price = nil
    @sale.quantity = 10
    @sale.total_price.should eql(0)
  end
  
  it "should be valid" do
    @sale.attributes = @valid_attr
    @sale.should be_valid
  end
end
