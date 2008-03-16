require File.dirname(__FILE__) + '/../spec_helper'

describe Sale do
  before(:each) do
    @sale = Sale.new
  end

  it "should be valid" do
    @sale.should be_valid
  end
end
