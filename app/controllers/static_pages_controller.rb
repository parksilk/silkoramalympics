class StaticPagesController < ApplicationController
  def home
  end

  def schedule
    redirect_to root_path unless user_signed_in?
  end
end
