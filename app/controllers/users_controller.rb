class UsersController < ApplicationController
  def index
    @users = User.where( :active => true )
    respond_to do |format|
      format.html
      format.json { render :json => @users }
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
