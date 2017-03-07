class FeedsController < ApplicationController
    
    def nprepisodes
        #npr is using this
        @episodes = Episode.joins(:episode_audios).where('airdate < ?', "2015/09/28".to_date).where(:status => 'live').order('airdate DESC').limit(10)
    end
    def episodes
        @episodes = Episode.includes(
            :episode_audios,
            {bits: :user},
            {on_air_participants: :user},
            {hosts: :user}
            ).where(:status => 'live').where(['publication_time < ? OR publication_time IS NULL', DateTime.now]).order('airdate DESC').limit(26)
    end
    def sitemap
        @episodes = Episode.where(:status => 'live').where(['publication_time < ? OR publication_time IS NULL', DateTime.now]).order('airdate DESC')
    end
end
