class EpisodeImage < ActiveRecord::Base
  belongs_to :episode
  attr_accessible :image
  has_attached_file :image, :styles => {:large=> "800x800", :medium => "600x600>", :small => "300x600", :smaller=> "200x200", :thumb => "100x100>" },
                    :path => ":rails_root/public/episodes/:episode_showdate_as_url/teaser-:style.:extension",
                    :url => "/episodes/:episode_showdate_as_url/teaser-:style.:extension"
  
end
