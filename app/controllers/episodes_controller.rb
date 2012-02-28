class EpisodesController < ApplicationController
  respond_to :html, :json
  before_filter :authenticate_user!, :except => [:index, :show]
  
  add_breadcrumb "home", :root_path, :title => "GS Home"
  add_breadcrumb "episodes", :episodes_path
  
  def index
    @episodes = Episode.where(:status => 'live').order('airdate DESC')
  end

  def show
    @episode = Episode.find(params[:id])
    add_breadcrumb @episode.air_year, "#{episodes_path}/#{@episode.air_year}"
    add_breadcrumb @episode.air_month, "#{episodes_path}/#{@episode.air_year}/#{@episode.air_month}"
    add_breadcrumb @episode.air_day, "#{episodes_path}/#{@episode.air_year}/#{@episode.air_month}/#{@episode.air_day}"
    
    respond_with(@episode)
  end

  def new
    @episode = Episode.new
    respond_with(@episode)
  end

  def create
    @episode = Episode.new(params[:episode])
    @episode.owner = current_user
    if @episode.save
      flash[:notice] = "Successfully created episode."
    end
    respond_with(@episode)
  end

  def edit
    @episode = Episode.find(params[:id])
    respond_with(@episode)
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update_attributes(params[:episode])
      flash[:notice] = "Successfully updated episode."
    end
    respond_with(@episode)
    
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    flash[:notice] = "Successfully destroyed episode."
    respond_with(@episode)
    
  end
end
