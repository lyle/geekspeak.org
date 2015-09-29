class FeedsController < ApplicationController
    
    def nprepisodes
        #npr is using this
        @episodes = Episode.joins(:episode_audios).where('airdate < ?', "2015/09/28".to_date).where(:status => 'live').order('airdate DESC').limit(10)
    end
    def episodes
        @episodes = Episode.joins(:episode_audios).where(:status => 'live').order('airdate DESC').limit(10)
    end
end
