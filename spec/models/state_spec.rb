require File.dirname(__FILE__) + '/../spec_helper'

describe State do
  before(:each) do
    @valid_state = {
      :name => "Alagoas",
      :abbreviation => "AL"
    }
    
    @state = State.new
  end
  
  it "should have a name" do
    @state.attributes = @valid_state.except(:name)
    @state.should have(1).error_on(:name)
  end
  
  it "should have an abbreviation" do
    @state.attributes = @valid_state.except(:abbreviation)
    @state.should have(1).error_on(:abbreviation)
  end
  
  it "should have an abbreviation with 2 characters" do
    @state.attributes = @valid_state.except(:abbreviation)
    @state.abbreviation = "A"
    @state.should have(1).error_on(:abbreviation)
    @state.abbreviation = "ALA"
    @state.should have(1).error_on(:abbreviation)
  end

  it "should be valid" do
    @state.attributes = @valid_state
    @state.should be_valid
  end
end
