class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.string :name

      t.timestamps
    end

    add_reference :favorites, :folder, foreign_key: true
  end
end
