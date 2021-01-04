class WelcomeController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]
  def index
    @episodes = Episode.where(:status=>'live').where(['publication_time < ? OR publication_time IS NULL', DateTime.now]).limit(8).order('airdate DESC').includes(:participants)
  end
end