class Bit < ActiveRecord::Base
    #has_many :segment_bits
    #has_many :segments, :through => :segment_bits   
    has_many :bit_episodes
    has_many :episodes, :through => :bit_episodes
    #acts_as_list :scope => :episode
    belongs_to :user
    attr_accessible :title, :url, :user_id, :body, :status

    scope :on, where(:status => 'on')
  
    scope :fresh, joins("left outer join bit_episodes on bits.id = bit_episodes.bit_id").
                select('bits.*, bit_episodes.episode_id').
                where('bit_episodes.episode_id is null')
    scope :re_used, joins("left outer join bit_episodes on bits.id = bit_episodes.bit_id").
              select('bits.*, bit_episodes.episode_id').
              where('bit_episodes.episode_id is NOT null')
            
    def self.freshness(purity)
        case purity
        when "re_used"
            re_used
        when "fresh"
            fresh
        else
            scoped
        end
    end
  def self.search(search)
    if search
      where('title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end
end
