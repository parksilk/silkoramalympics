class UsersController < ApplicationController

#   def show
#     @user = User.find(params[:id])
#     @first_name = current_user.name_first
#     @last_name  = current_user.name_last
#     @user_full_name  = "#{@first_name} #{@last_name}"
#   end

  def profile
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
