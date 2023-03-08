class AddPhotoToSpots < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :photo, :string
  end
end
