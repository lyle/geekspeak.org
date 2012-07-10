class Bit < ActiveRecord::Base
  has_many :segment_bits
  has_many :segments, :through => :segment_bits   
  belongs_to :user
  attr_accessible :title, :url, :user_id, :body, :status
  
end
