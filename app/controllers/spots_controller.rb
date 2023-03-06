class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  private

  def spot_params
    params.require(:spot).permit(:id, :name, :description, :price, :category, :tag, photos: [])
  end
end
