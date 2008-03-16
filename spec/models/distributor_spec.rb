require File.dirname(__FILE__) + '/../spec_helper'

describe Distributor do
  before(:each) do
    @distributor = Distributor.new
  end

  it "should be valid" do
    @distributor.should be_valid
  end
end
