class ParticipantsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  respond_to :html, :json
  def index
    @participants = Participant.all
  end

  def show
    @participant = Participant.find(params[:id])
  end

  def new
    @participant = Participant.new
    @participant.user = current_user
  end

  def create

    @participant = Participant.new(params[:participant])

      if @participant.save
        respond_to do |format|
          format.html { redirect_to @participant, :notice => "Successfully created participant."}
          format.js
        end
      else
        respond_to do |format|
          format.html {render :action => 'new'}
          format.js
        end
      end
  end

  def edit
    @participant = Participant.find(params[:id])
  end

  def update
    @participant = Participant.find(params[:id])
    if @participant.update_attributes(params[:participant])
      redirect_to @participant, :notice  => "Successfully updated participant."
    else
      render :action => 'edit'
    end
    
    respond_with_bip(@participant)
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    respond_to do |format|
      format.html {redirect_to participants_url, :notice => "Successfully destroyed participant."}
      format.js
    end
  end
end
