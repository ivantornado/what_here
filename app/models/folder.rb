class Folder < ApplicationRecord
  has_many :favorite_folders
  has_many :favorites, through: :favorite_folders
  belongs_to :user

  def spots
    favorites.map(&:favoritable).uniq
  end
end
