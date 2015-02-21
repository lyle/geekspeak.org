class BitsEpisodeController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :json
  def sort
    params[:bits_episode].each_with_index do |id, index|
      BitEpisode.update_all({position: index+1}, {id:id})
    end
    render nothing: true
  end
  
  def create
    @bits_episode = BitEpisode.new(params[:bits_episode])
    @bits_episode.bit_id = params[:bit_id]
    @bits_episode.episode_id = params[:episode_id]
    if @bits_episode.save
      flash[:notice] = "Successfully added bit to episode!"
    end
    redirect_to @bits_episode.episode
  end

  def destroy
    bits_episode =  BitEpisode.find(params[:id])
    episode = bits_episode.episode
    bits_episode.destroy
    flash[:notice] = "Unlinked Bit to Episode"
    redirect_to episode
  end
 
end