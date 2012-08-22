class Segment < ActiveRecord::Base
  belongs_to :episode
  acts_as_list :scope => :episode
  attr_accessible :title, :episode_id, :position, :bits_attributes
  has_many :segment_bits, :order => "position"
  has_many :bits, :through => :segment_bits
  
  
  accepts_nested_attributes_for :segment_bits  ,:allow_destroy => true
  accepts_nested_attributes_for :bits  ,:allow_destroy => true
end
