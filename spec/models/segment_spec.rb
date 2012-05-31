require File.dirname(__FILE__) + '/../spec_helper'

describe Segment do
  it "should be valid" do
    Segment.new.should be_valid
  end
end
