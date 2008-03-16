require File.dirname(__FILE__) + '/../spec_helper'

describe State do
  before(:each) do
    @state = State.new
  end
  
  it "should have a name"
  it "should have an abbreviation"
  it "should have an abbreviation with 2 characters"

  it "should be valid" do
    @state.should be_valid
  end
end
