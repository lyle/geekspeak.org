require File.dirname(__FILE__) + '/../spec_helper'

describe SegmentBit do
  it "should be valid" do
    SegmentBit.new.should be_valid
  end
end
