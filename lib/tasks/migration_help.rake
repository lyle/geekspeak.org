namespace :migration_help do
    desc "Add all the bits in each episode_segment to the episode through the bits_episodes table"
    task :bits_to_episodes => :environment do
        
      Segment.all.each do |s|
          # plan: to step through eveery Segment and add every bit to every show directily
          e = Episode.find(s.episode)
          e.bits = s.bits
      end
    end
end