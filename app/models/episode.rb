class Episode < ActiveRecord::Base
  extend FriendlyId
  friendly_id :showdate_as_url, :use => :slugged
  
  #scope :by_year, lambda {|year| where("date >= ? and date <= ?", "#{year}-01-01", "#{year}-12-31")}
  scope :by_year, lambda { |d| { :conditions  => { :airdate  => d.beginning_of_year..d.end_of_year } } }
  scope :by_month, lambda { |d| { :conditions  => { :airdate  => d.beginning_of_month..d.end_of_month } } }
  
  has_many :participants
  has_many :users,  :through => :participants
  accepts_nested_attributes_for :participants  
  
  belongs_to :owner,
             :class_name => "User",
             :foreign_key => "user_id"
  
  has_attached_file :teaser, :styles => {:large=> "800x800", :medium => "600x600>", :dem300x600 => "300x600", :small=> "300x300", :thumb => "100x100>" }

  attr_accessible :title, :promo, :abstract, :user_id, :status, :airdate, :teaser, :participants_attributes
  
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
  
  def normalize_friendly_id(text)
    text
  end
end
