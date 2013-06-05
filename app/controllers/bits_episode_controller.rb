class BitsEpisodeController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :html, :json
  def sort
    params[:bits_episode].each_with_index do |id, index|
      BitEpisode.update_all({position: index+1}, {id:id})
    end
    render nothing: true
  end
end