class UsersController < ApplicationController
  def index
    @users = User.where( :active => true )
  end

  def show
    @user = User.find(params[:id])
  end

end
