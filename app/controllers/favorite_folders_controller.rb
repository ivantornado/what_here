class FavoriteFoldersController < ApplicationController
  def create
    favorite_folder = FavoriteFolder.new(favorite_folder_params)
    favorite_folder.favorite = current_user.favorites.find_by(favoritable_id: params[:id])

    if favorite_folder.save
      redirect_to folder_path(favorite_folder)
    else
      # TODO
    end
  end

  private

  def favorite_folder_params
    params.require(:favorite_folder).permit(:favorite_id, :folder_id)
  end
end
