class CreateFavoriteFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_folders do |t|
      t.references :favorite, null: false
      t.references :folder, null: false

      t.timestamps
    end

    remove_reference :favorites, :folder, foreign_key: true
  end
end
