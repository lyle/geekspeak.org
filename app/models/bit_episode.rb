class BitEpisode < ActiveRecord::Base
  belongs_to :episode
  belongs_to :bit, :include => :user
  acts_as_list :scope => :episode
  
  attr_accessible :episode_id, :bit_id, :position, :bits_attributes
  accepts_nested_attributes_for :bit
  
end
