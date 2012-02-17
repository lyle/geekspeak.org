class EpisodesController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:index, :show]
  
  
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(params[:episode])
    @episode.owner = current_user
    if @episode.save
      redirect_to @episode, :notice => "Successfully created episode."
    else
      render :action => 'new'
    end
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update_attributes(params[:episode])
      redirect_to @episode, :notice  => "Successfully updated episode."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    redirect_to episodes_url, :notice => "Successfully destroyed episode."
  end
end
