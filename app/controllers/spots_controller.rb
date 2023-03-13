require 'uri'

class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show toggle_favorite]

  def index
    @spots = Spot.all
    # @places = @client.spots_by_query(location, types: selected, exclude: unselected)
    # @places.each do |place|
    #   next if place.photos.empty?

    #   Spot.create(
    #     name: place.name,
    #     spot_location: place.vicinity,
    #     latitude: place.lat,
    #     longitude: place.lng,
    #     description: "https://maps.googleapis.com/maps/api/place/details/",
    #     photo: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&maxheight=400&photo_reference=#{place.photos[0].photo_reference}&key=#{ENV.fetch('API_KEY')}",
    #     rating: place.rating
    #   )
    # end
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def favorites
    @favorites = current_user.all_favorites
  end

  def toggle_favorite
    @spot = Spot.find(params[:id])
    if current_user.favorited?(@spot)
      current_user.unfavorite(@spot)
      redirect_to favorites_path
    else
      current_user.favorite(@spot)
      redirect_to spots_path
    end
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
