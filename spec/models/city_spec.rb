require File.dirname(__FILE__) + '/../spec_helper'

describe City do
  before(:each) do
    @city = City.new
  end
  
  it "should have a name"
  it "should have a state"
  
  it "should be valid" do
    @city.should be_valid
  end
end
