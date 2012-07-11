class SegmentsController < ApplicationController
  def index
    @episode = Episode.find(params[:episode_id])
    @segments = @episode.segments
  end

  def show
    @segment = Segment.find(params[:id])
  end
end
