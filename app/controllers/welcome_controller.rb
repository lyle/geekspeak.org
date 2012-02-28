class WelcomeController < ApplicationController
  def index
    @episodes = Episode.where(:status=>'live').limit(10).order('airdate DESC').includes(:participants)
  end
end