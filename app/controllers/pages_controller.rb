class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    return unless current_user

    redirect_to spots_path
  end

  def profile
    current_user.update(location: params[:query])
  end
end
