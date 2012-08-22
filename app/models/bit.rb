class Bit < ActiveRecord::Base
  has_many :segment_bits
  has_many :segments, :through => :segment_bits   
  has_many :bit_episodes
  has_many :episodes, :through => :bit_episodes
<<<<<<< HEAD
  acts_as_list :scope => :episoe

=======
  acts_as_list :scope => :episode
>>>>>>> Got /bits working limited, and moved _bits to bit dir
  belongs_to :user
  attr_accessible :title, :url, :user_id, :body, :status
  
end
