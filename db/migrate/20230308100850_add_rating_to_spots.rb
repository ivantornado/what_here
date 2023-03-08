class AddRatingToSpots < ActiveRecord::Migration[7.0]
  def change
    add_column :spots, :rating, :float
  end
end
