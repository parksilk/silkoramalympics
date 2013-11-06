class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = current_user
    redirect_to root_path unless user_signed_in?    
  end

  def players
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to players_path
  end

end
