class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show toggle_favorite]

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def toggle_favorite
    @spot = Spot.find_by(id: params[:id])
    current_user.favorited?(@spot) ? current_user.unfavorite(@spot) : current_user.favorite(@spot)
    redirect_to spots_path, notice: "#{@spot.name} added!"
  end

  def favorites
    @favorites = current_user.all_favorites
  end

  private

  def spot_params
    params.require(:spot).permit(:id, :name, :description, :price, :category, :tag, photos: [])
  end
end
