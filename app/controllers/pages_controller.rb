class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home profile]

  def home
    return unless current_user

    redirect_to spots_path
  end
end
