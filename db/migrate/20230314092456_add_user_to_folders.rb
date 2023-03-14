class AddUserToFolders < ActiveRecord::Migration[7.0]
  def change
    add_reference :folders, :user, null: false, foreign_key: true
  end
end
