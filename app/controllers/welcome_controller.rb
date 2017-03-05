class WelcomeController < ApplicationController
    before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @episodes = Episode.where(:status=>'live').limit(8).order('airdate DESC').includes(:participants)
  end
end