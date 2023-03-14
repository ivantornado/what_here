class FoldersController < ApplicationController
  before_action :set_folder, only: %i[show edit update destroy]

  def index
    @folders = Folder.all.where(user_id: current_user)
  end

  def show
    @favorites = current_user.all_favorites.where(folder: @folder)
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(folder_params)
    @folder.user = current_user

    if @folder.save
      redirect_to folders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @folder.update(folder_params)
    redirect_to folders_path
  end

  def destroy
    @folder.destroy
    redirect_to folders_path
  end

  private

  def set_folder
    @folder = Folder.find(params[:id])
  end

  def folder_params
    params.require(:folder).permit(:name, :user_id)
  end
end
