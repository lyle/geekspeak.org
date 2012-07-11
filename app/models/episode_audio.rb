class EpisodeAudio < ActiveRecord::Base
  belongs_to :episode
  attr_accessible :audio
  has_attached_file :audio, :path => ":rails_root/public/shows/audio/:basename.:extension", :url => "/shows/audio/:basename.:extension"
  
end
