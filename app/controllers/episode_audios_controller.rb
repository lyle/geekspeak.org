class EpisodeAudiosController < ApplicationController
    before_filter :authenticate_user!, :except =>[:show, :index]
  def show
    
      @episode_audio = EpisodeAudio.find( params[:episode_audio] )
  end
  def index
      @episode = Episode.find(params[:episode_id])
    
      @episode_audios = @episode.episode_audios
  end
  def new
    @episode = Episode.find(params[:episode_id])
    @episode_audio = EpisodeAudio.new
  end
  def create
    @episode = Episode.find(params[:episode_id])
    @episode_audio = @episode.episode_audios.build( params[:episode_audio] )
    @episode_audio.audio.instance_write :file_name, "GeekSpeak_#{@episode.showdate_as_file_part}#{File.extname(@episode_audio.audio.instance_read(:file_name)).downcase}"
    
    if @episode_audio.save
      redirect_to episode_url(@episode), :notice => "Successfully Added Audio"
    else
      render :new
    end
  end
  
  
  def destroy
    
    
    @episode_audio = EpisodeAudio.find( params[:id] )
    @episode = @episode_audio.episode
    @episode_audio.destroy
    redirect_to episode_url(@episode), :notice => "Successfully destroyed episode_audio."
  end
end
