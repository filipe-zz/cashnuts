require File.dirname(__FILE__) + '/../spec_helper'

module StateSpecHelper
  def valid_attr
    {
      :name => "Alagoas",
      :abbreviation => "AL"
    }
  end
end

describe State do
  include StateSpecHelper
  
  fixtures :cities
  
  before(:each) do
    @state = State.new
  end
  
  it "should have a name" do
    @state.attributes = valid_attr.except(:name)
    @state.should have(1).error_on(:name)
  end
  
  it "should have an abbreviation" do
    @state.attributes = valid_attr.except(:abbreviation)
    @state.should have(1).error_on(:abbreviation)
  end
  
  it "should have an abbreviation with 2 characters" do
    @state.attributes = valid_attr.except(:abbreviation)
    @state.abbreviation = "A"
    @state.should have(1).error_on(:abbreviation)
    @state.abbreviation = "A"
    @state.should have(1).error_on(:abbreviation)
  end
  
  it "should be related to city" do
    @state.cities << cities(:maceio)
    @state.cities.should include(cities(:maceio))
    
  end

  it "should be valid" do
    @state.attributes = valid_attr
    @state.should be_valid
  end
end
