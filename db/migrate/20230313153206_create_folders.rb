class CreateFolders < ActiveRecord::Migration[7.0]
  def change
    create_table :folders do |t|
      t.references :favorites, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
