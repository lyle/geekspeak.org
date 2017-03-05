class Episode < ActiveRecord::Base
  extend FriendlyId
  friendly_id :showdate_as_url, :use => :slugged
  default_scope -> {order('airdate DESC')}

  #scope :by_year, lambda {|year| where("date >= ? and date <= ?", "#{year}-01-01", "#{year}-12-31")}
  #scope :by_year, lambda { |d| { :conditions  => { :airdate  => d.beginning_of_year..d.end_of_year } } }
  
  scope :in_year, ->  (year){ where(airdate: (year).beginning_of_year..(year).end_of_year)}

  scope :in_month, -> (month){ where(airdate: (month).beginning_of_month..(month).end_of_month)}
  scope :recent, -> {order("airdate desc")}
  
  has_many :participants
  
  has_many :bit_episodes, -> {order("position")}, dependent: :destroy
  has_many :bits, -> {order("bit_episodes.position")}, :through => :bit_episodes
  
  has_many :episode_audios
  has_many :episode_images
  
  has_many :hosts, -> { where(participants: {role: 'host'})}, :class_name => "Participant"
  has_many :friends, -> { where(friendship: {status: 'accepted'}).order('first_name DESC') }, :through => :friendships

 

  has_many :on_air_participants, -> { where(participants: {role: ["host", "cohost", "guest"]})}, :class_name => "Participant"

  has_many :users,  :through => :participants
  accepts_nested_attributes_for :participants, :allow_destroy => true
  accepts_nested_attributes_for :bits  ,:allow_destroy => true
  
  validates :slug, uniqueness: true
  validates :airdate, uniqueness: true


  belongs_to :owner,
             :class_name => "User",
             :foreign_key => "user_id"
  
  has_attached_file :teaser, :styles => {:large=> "800x800", :medium => "600x600>", :small => "300x600", :smaller=> "200x200", :thumb => "100x100>" },
                    :path => ":rails_root/public/episodes/:showdate_as_url/teaser-:style.:extension",
                    :url => "/episodes/:showdate_as_url/teaser-:style.:extension"

  attr_accessible :title, :promo, :abstract, :content, :user_id, :status, :airdate, :teaser, :lock_version, :participants_attributes, :bits_attributes, :publication_time, :guid_override

  def season_name
    "Season #{season_number}"
  end
  def episode_name
    if season_number < 1
      "beta #{episode_number}"
    else
      "Episode #{episode_number}"
    end
  end
  def season_number
    if air_year.to_i < 2000
      -(2000 - air_year.to_i)
    else
      air_year.to_i - 2000
    end
  end
  def episode_number
    #we need to do this better for multiple episodes per week
    #we will add fields in the datebase for Episode 
    if airdate.beginning_of_year.cwday == airdate.cwday
      #This year started on a Saturday so the cweek will be off on the count
      #cweek starts on monday - so let's make the weekCounterDay Monday
      weekCounterDay = airdate+2
    else
      #the year didn't start on a Saturday, so the first Saturday will happen
      #after the first week (a monday) has started - so cweek is good for us
      weekCounterDay = airdate
    end
    #and we are geeks so we like starting counts with 0
    (weekCounterDay.cweek) -1 
  end

  def should_generate_new_friendly_id?
       slug.blank? || airdate_changed?
  end
  def update_with_conflict_validation(*args)
    update_attributes(*args)
  rescue ActiveRecord::StaleObjectError
    self.lock_version = lock_version_was
    errors.add :base, "This record changed while you were editing."
    changes.except("updated_at").each do |name, values|
      errors.add name, "was #{values.first}"
    end
    false
  end
  
  def airdate_to_s_rfc822
    if publication_time 
      publication_time.rfc2822
    else
      Time.new(airdate.year, airdate.month, airdate.day).advance(:hours => 10).rfc2822
    end
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

  def rss_description
    output = textilize(abstract) + "<ul>"
    bit_episodes.each do |episode_bit|
      output += "<li>"
      if episode_bit.bit.url.blank?
        output = output + episode_bit.bit.title + textilize(episode_bit.bit.body)
      else
        output = output + "<a href=\"#{episode_bit.bit.url}\">#{episode_bit.bit.title}</a>"
      end
      output += "</li>"
    end
    return output + "</ul>"
  end
  
  
end
class Date
  def saturday_number
    date = self -6
    date.cweek
  end
end