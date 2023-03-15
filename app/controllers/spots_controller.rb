class SpotsController < ApplicationController
  before_action :authenticate_user!

  def index
    @spots = Spot.all
    # @client = GooglePlaces::Client.new(ENV.fetch('API_KEY'))
    # @places = @client.spots_by_query(current_user.location, radius: 500)
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
    @favorite = current_user.all_favorites.find_by(favoritable: @spot)
    @favorite_folder = FavoriteFolder.new(favorite: @favorite)
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
    @favorite.update(favorite_params)
    @favorite.save
  end

  private

  def spot_params
    params.require(:spot).permit(:id, :name, :description, :price, :category, :tag, photos: [])
  end

end
