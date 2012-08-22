class CreateBitsEpisodes < ActiveRecord::Migration
    def self.up
      create_table :bit_episodes do |t|
        t.integer :bit_id
        t.integer :episode_id
        t.integer :position
        t.timestamps
      end
        Segment.all.each do |s|
            # plan: to step through eveery Segment and add every bit to every show directily
            e = Episode.find(s.episode)
            e.bits = s.bits
        end
    end

    def self.down
      drop_table :bit_episodes
    end
end
