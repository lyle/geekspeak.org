class Episode < ActiveRecord::Base
  extend FriendlyId
  friendly_id :showdate_as_url, :use => :slugged
    
  has_many :participants, :order => "role"
  has_many :users,  :through => :participants
  
  belongs_to :owner,
             :class_name => "User",
             :foreign_key => "user_id"
  
  has_attached_file :teaser, :styles => {:large=> "800x800", :medium => "600x600>", :small=> "300x300", :thumb => "100x100>" }
  
  attr_accessible :title, :promo, :abstract, :user_id, :status, :showtime, :teaser
  
  def showdate_as_url
    "#{showtime.strftime("%Y/%m/%d")}"
  end
  
  def normalize_friendly_id(text)
    text
  end
end
