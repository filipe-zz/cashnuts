require File.dirname(__FILE__) + '/../spec_helper'

describe City do
  fixtures :states
  
  before(:each) do
    @city = City.new
  end
  
  it "should have a name" do
    @city.should have(1).error_on(:name)
  end
  
  it "should have a state" do
    @city.should have(1).error_on(:state_id)
  end
  
  it "should be related to State" do
    @city.state = states(:alagoas)
    @city.state.should eql(states(:alagoas))
    
  end
  
  it "should be valid" do
    @city.name = "Maceio"
    @city.state = states(:alagoas)
    @city.should be_valid
  end
end
