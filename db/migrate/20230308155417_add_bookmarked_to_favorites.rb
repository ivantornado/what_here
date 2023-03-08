class AddBookmarkedToFavorites < ActiveRecord::Migration[7.0]
  def change
    add_column :favorites, :bookmarked, :boolean, default: false
  end
end
