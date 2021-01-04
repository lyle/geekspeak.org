class EpisodeImage < ActiveRecord::Base
  belongs_to :episode
  has_attached_file :image, :styles => {:large=> "800x800", :medium => "600x600>", :small => "300x600", :smaller=> "200x200", :thumb => "100x100>" },
                    :path => ":rails_root/public/episodes/:episode_showdate_as_url/:basename-:style.:extension",
                    :url => "/episodes/:episode_showdate_as_url/:basename-:style.:extension"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
