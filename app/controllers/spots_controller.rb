class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show toggle_favorite]

  def index
    @client = GooglePlaces::Client.new(ENV.fetch('API_KEY'))
    @places = @client.spots(38.725119, -9.150248, radius: 500, types: ['museum'], photos: true)
    @places.each do |place|
      reference = place.photos[0].photo_reference
      Spot.create(
        name: place.name,
        category: place.rating,
        spot_location: place.vicinity,
        latitude: place.lat,
        longitude: place.lng,
        description: "https://maps.googleapis.com/maps/api/place/details/",
        photo: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&maxheight=400&photo_reference=#{reference}&key=#{ENV.fetch('API_KEY')}",
        rating: place.rating
      )

    end
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
