class FeedsController < ApplicationController
    
    def nprepisodes
        #npr is using this
        @episodes = Episode.joins(:episode_audios).where(:status => 'live').order('airdate DESC').limit(10)
    end
    def episodes
        @episodes = Episode.joins(:episode_audios).where(:status => 'live').order('airdate DESC').limit(10)
    end
end
