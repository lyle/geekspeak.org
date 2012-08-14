class FeedsController < ApplicationController
    
    def episodes
        @episodes = Episode.joins(:episode_audios).where(:status => 'live').order('airdate DESC').limit(10)
    end
end
