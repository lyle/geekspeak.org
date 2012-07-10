class SegmentBit < ActiveRecord::Base
  belongs_to :segment
  belongs_to :bit
  attr_accessible :segment_id, :bit_id, :position, :bits_attributes
  accepts_nested_attributes_for :bit
  
end
