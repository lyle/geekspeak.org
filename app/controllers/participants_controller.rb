class ParticipantsController < ApplicationController
  def index
    @participants = Participant.all
  end

  def show
    @participant = Participant.find(params[:id])
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(params[:participant])
    if @participant.save
      redirect_to @participant, :notice => "Successfully created participant."
    else
      render :action => 'new'
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
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to participants_url, :notice => "Successfully destroyed participant."
  end
end
