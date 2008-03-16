require File.dirname(__FILE__) + '/../spec_helper'

describe Client do
  fixtures :cities, :sales, :clients
  
  before(:each) do
    @valid_attr = {
      :name => "WalMart",
      :address => "Av Dona Constanca, 1778",
      :contact => "Joao Silva",
      :phone => "82 9988-1122",
      :email => "joao@walmart.com",
      :city => cities(:maceio)
    }
    
    @client = Client.new
  end
  
  it "should have a name" do
    @client.attributes = @valid_attr.except(:name)
    @client.should have(1).error_on(:name)
  end
  
  it "should have a name with less than 100 characters" do
    @client.attributes = @valid_attr.except(:name)
    @client.name = ""
    101.times {@client.name << "a"}
    @client.should have(1).error_on(:name)
  end
  
  it "shoud have a city" do
    @client.attributes = @valid_attr.except(:city)
    @client.should have(1).error_on(:city_id)
  end
  
  it "should be related to Sales" do
    @client.sales << sales(:one)
    @client.sales.should include(sales(:one))
  end
  
  it "should be valid" do
    @client.attributes = @valid_attr
    @client.should be_valid
  end
end
