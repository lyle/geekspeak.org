class EpisodesController < ApplicationController
  respond_to :html, :json
  before_action :authenticate_user!, :except => [:index, :show, :year_archive, :month_archive]
  
  add_breadcrumb "home", "/", :title => "GS Home"
  add_breadcrumb "episodes", :episodes_path
  
  
  
  def index
    @episodes = Episode.where(:status => 'live').where(['publication_time < ? OR publication_time IS NULL', DateTime.now]).order('airdate DESC').limit(30)
  end
  def pending
    @episodes = Episode.where("status <> 'live' OR ( publication_time IS NOT NULL AND publication_time > ? )", DateTime.now).order('airdate DESC').limit(30)
  end

  def year_archive
    @episodes = Episode.in_year(Date.new(params[:year].to_i)).where(:status => 'live').where(['publication_time < ? OR publication_time IS NULL', DateTime.now])
    add_breadcrumb params[:year], "#{episodes_path}#{params[:year]}/"
    render :template => 'episodes/index'
  end
  def month_archive
    @episodes = Episode.in_month(Date.new(params[:year].to_i,params[:month].to_i)).where(:status => 'live').where(['publication_time < ? OR publication_time IS NULL', DateTime.now])
    add_breadcrumb params[:year], "#{episodes_path}#{params[:year]}/"
    add_breadcrumb params[:month], "#{episodes_path}#{params[:year]}/#{params[:month]}/"
    render :template => 'episodes/index' 
  end


  def show
    @episode = Episode.find(params[:id])
    add_breadcrumb @episode.air_year, "#{episodes_path}#{@episode.air_year}/"
    add_breadcrumb @episode.air_month, "#{episodes_path}#{@episode.air_year}/#{@episode.air_month}/"
    add_breadcrumb @episode.air_day, "#{episodes_path}#{@episode.air_year}/#{@episode.air_month}/#{@episode.air_day}/"
    
    if user_signed_in?
        @bits = Bit.freshness("fresh").order("bits.updated_at DESC").where("bits.updated_at > ?",7.days.ago).limit(20)
    end
    
    respond_with(@episode)
    
  end

  def new
    @episode = Episode.new
    respond_with(@episode)
  end

  def create

      #@date = Date.parse("#{params[:episode]["airdate(3i)"]}-#{params[:episode]["airdate(2i)"]}-#{params[:episode]["airdate(1i)"]}")
      @episode = Episode.new(episode_params)
      @episode.owner = current_user
      respond_to do |format|
        if @episode.save
          flash[:notice] = 'Successfully created episode.'
          format.html { redirect_to("/episodes/#{@episode.to_param}") }
        else
          flash[:error] = 'Problem creating episode'
          format.html { render action: "new" }
        end
      end
    # end
    # if @episode.valid?
    #   @episode.save

    #   flash[:notice] = "Successfully created episode."
    #   respond_with(@episode)
    # else
    #   flash[:notice] = "This Episode Already Exists"
    #   @date = Date.parse("#{params[:episode]["airdate(3i)"]}-#{params[:episode]["airdate(2i)"]}-#{params[:episode]["airdate(1i)"]}")

    #   @episode = Episode.find(@date.strftime("%Y/%m/%d"))

    #   #render inline: "Ahhh, dno new ep: #{slug}"
    #   respond_with(@episode)
    # end
  end

  def edit
    @episode = Episode.find(params[:id])
    respond_with(@episode)
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update_with_conflict_validation(episode_params)
      

      respond_to do |format|
        format.html {redirect_to(@episode, :notice => "Successfully updated episode.")}
        format.json { respond_with_bip(@episode) }
      end
      #format.html {
      #  flash[:notice] = "Successfully updated episode."
      #  respond_with(@episode)
      #}
      #format.json { respond_with_bip(@episode) }
    end
    
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    flash[:notice] = "Successfully destroyed episode."
    respond_with(@episode)
    
  end

  private
  def episode_params
    params.require(:episode).permit(:title, :promo, :abstract, :content, :user_id, :status, :airdate, :teaser, :lock_version, :participants_attributes, :bits_attributes, :publication_time, :guid_override)
  end

end
