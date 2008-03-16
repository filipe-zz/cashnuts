require File.dirname(__FILE__) + '/../spec_helper'

describe City do
  fixtures :states, :clients, :cities
  
  before(:each) do
    @valid_attr = {
      :name => "Maceio",
      :state => states(:alagoas)
    }
    
    @city = City.new
  end
  
  it "should have a name" do
    @city.attributes = @valid_attr.except(:name)
    @city.should have(1).error_on(:name)
  end
  
  it "should have a state" do
    @city.attributes = @valid_attr.except(:state)
    @city.should have(1).error_on(:state_id)
  end
  
  it "should be related to Clients" do
    @city.clients << clients(:walmart)
    @city.clients.should include(clients(:walmart))
  end
  
  it "should be valid" do
    @city.attributes = @valid_attr
    @city.should be_valid
  end
end
