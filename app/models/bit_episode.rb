class BitEpisode < ActiveRecord::Base
  belongs_to :episode
  belongs_to :bit, -> {includes(:user)}
  acts_as_list :scope => :episode
  default_scope -> {
    includes(:bit)
  }
  accepts_nested_attributes_for :bit
  
end
