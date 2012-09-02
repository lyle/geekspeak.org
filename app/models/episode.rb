class Episode < ActiveRecord::Base
  extend FriendlyId
  friendly_id :showdate_as_url, :use => :slugged
  default_scope :order => 'airdate DESC'
  
  #scope :by_year, lambda {|year| where("date >= ? and date <= ?", "#{year}-01-01", "#{year}-12-31")}
  scope :by_year, lambda { |d| { :conditions  => { :airdate  => d.beginning_of_year..d.end_of_year } } }
  scope :by_month, lambda { |d| { :conditions  => { :airdate  => d.beginning_of_month..d.end_of_month } } }
  
  has_many :participants
  has_many :segments, :order => "position"
  has_many :segment_bits, :through => :segments
  #has_many :bits, :through => :segment_bits
  
  has_many :bit_episodes, :order => "position", :include => :bits
  has_many :bits, :through => :bit_episodes, :order => "bit_episodes.position" 
  
  has_many :episode_audios
  has_many :episode_images
  
  has_many :hosts, :class_name => "Participant", :conditions => {:role => "host"}
  has_many :on_air_participants, :class_name => "Participant", :conditions => { :role => ["host", "cohost", "guest"]}
  
  has_many :users,  :through => :participants
  accepts_nested_attributes_for :participants, :allow_destroy => true
  accepts_nested_attributes_for :bits  ,:allow_destroy => true
  
  accepts_nested_attributes_for :segments  ,:allow_destroy => true
  
  belongs_to :owner,
             :class_name => "User",
             :foreign_key => "user_id"
  
  has_attached_file :teaser, :styles => {:large=> "800x800", :medium => "600x600>", :small => "300x600", :smaller=> "200x200", :thumb => "100x100>" },
                    :path => ":rails_root/public/episodes/:showdate_as_url/teaser-:style.:extension",
                    :url => "/episodes/:showdate_as_url/teaser-:style.:extension"

  attr_accessible :title, :promo, :abstract, :content, :user_id, :status, :airdate, :teaser, :participants_attributes, :bits_attributes
  
  def airdate_to_s_rfc822
     Time.new(airdate.year, airdate.month, airdate.day).advance(:hours => 10).rfc2822 
  end
  
  def showdate_as_file_part
      
  end
  
  def air_year
    airdate.strftime("%Y")
  end
  
  def air_month
    airdate.strftime("%m")
  end
  
  def air_day
    airdate.strftime("%d")
  end
  def to_param
    showdate_as_url
  end
  def showdate_as_url
    "#{airdate.strftime("%Y/%m/%d")}"
  end
  def showdate_as_file_part
      "#{airdate.strftime("%Y-%m-%d")}"
  end

  def normalize_friendly_id(text)
    text
  end
  
  
end
