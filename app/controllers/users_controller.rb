class UsersController < ApplicationController

  def profile
    redirect_to root_path unless user_signed_in?    
    @user = current_user
    @first_name = current_user.name_first
    @last_name  = current_user.name_last
  end

end
