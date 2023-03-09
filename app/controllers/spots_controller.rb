class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show toggle_favorite]

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def favorites
    @favorites = current_user.all_favorites
  end

  def toggle_favorite
    @spot = Spot.find(params[:id])
    current_user.favorited?(@spot) ? current_user.unfavorite(@spot) : current_user.favorite(@spot)
    redirect_to spots_path
  end

  def dislike
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to spots_path
  end

  def bookmarks
    @favorites = current_user.all_favorites
  end

  def update
    @spot = Spot.find(params[:id])
    @favorite = current_user.favorites.find_by(favoritable_id: @spot.id)
    @favorite.bookmarked = !@favorite.bookmarked
    @favorite.save
  end

  private

  def spot_params
    params.require(:spot).permit(:id, :name, :description, :price, :category, :tag, photos: [])
  end
end
