class AddRadiusToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :radius, :integer
  end
end
