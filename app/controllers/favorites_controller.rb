class FavoritesController < ApplicationController

  def update
    @favorite = current_user.favorites.find_by(id: params[:id])
    @favorite.update(favorite_params)
    redirect_to folder_path(@favorite.folder)
  end

  private

  def favorite_params
    params.require(:favorite).permit(:folder_id)
  end
end
