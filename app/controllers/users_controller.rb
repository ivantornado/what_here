class UsersController < ApplicationController

  def update
    current_user.update(user_params)
    redirect_to spots_path
  end

  private

  def user_params
    params.require(:user).permit(:location, :radius)
  end
end
