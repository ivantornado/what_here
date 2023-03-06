class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :category
      t.string :tag
      t.integer :price
      t.text :description
      t.text :spot_location

      t.timestamps
    end
  end
end
