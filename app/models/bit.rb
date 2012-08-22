class Bit < ActiveRecord::Base
  has_many :segment_bits
  has_many :segments, :through => :segment_bits   
  has_many :bit_episodes
  has_many :episodes, :through => :bit_episodes
  acts_as_list :scope => :episode
  belongs_to :user
  attr_accessible :title, :url, :user_id, :body, :status
  
end
