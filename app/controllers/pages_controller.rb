class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    if current_user
      redirect_to spots_path
    end
  end

  def profile
  end
  
end
