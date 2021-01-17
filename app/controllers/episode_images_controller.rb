class EpisodeImagesController < ApplicationController
    before_action :authenticate_user!, :except =>[:show, :index]
    def show

        @episode_image = EpisodeImage.find( params[:episode_image] )
    end
    def index
        @episode = Episode.find(params[:episode_id])

        @episode_images = @episode.episode_images
    end
    def new
      @episode = Episode.find(params[:episode_id])
      @episode_image = EpisodeImage.new
    end
    def create
      @episode = Episode.find(params[:episode_id])
      @episode_image = @episode.episode_images.build( episode_image_params )
      if @episode_image.save
        redirect_to episode_url(@episode), :notice => "Successfully Added Image"
      else
        render :new
      end
    end


    def destroy
      @episode_image = EpisodeImage.find( params[:id] )
      @episode = @episode_image.episode
      @episode_image.destroy
      redirect_to episode_url(@episode), :notice => "Successfully destroyed episode_image."
    end

    private
    def episode_image_params
      params.require(:episode_image).permit(:image)
    end
end
