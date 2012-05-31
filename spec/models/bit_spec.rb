require File.dirname(__FILE__) + '/../spec_helper'

describe Bit do
  it "should be valid" do
    Bit.new.should be_valid
  end
end
