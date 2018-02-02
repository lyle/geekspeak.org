class EpisodeAudio < ActiveRecord::Base
  require "mp3info"
  belongs_to :episode
  attr_accessible :audio, :duration
  has_attached_file :audio,
                    :path => ":rails_root/public/shows/audio/:basename.:extension",
                    :url => "/shows/audio/:basename.:extension"
  validates_attachment_content_type :audio, :content_type => [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]
                    
  before_save :save_audio_duration
  
  def duration_in_hms
      Time.at(self.duration).gmtime.strftime('%R:%S')
  end
  
  def is_audio?
    audio_content_type =~ %r{^audio/(?:mp3|mpeg|mpeg3|mpg|x-mp3|x-mpeg|x-mpeg3|x-mpegaudio|x-mpg)$}
  end
  
  
  private 
  def save_audio_duration
    return unless is_audio?
    path = audio.queued_for_write[:original].path
    open_opts = { :encoding => 'utf-8' }
    Mp3Info.open(path, open_opts) do |mp3info|
      self.duration = mp3info.length
    end
  end
end
