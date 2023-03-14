# frozen_string_literal: true

class Favorite < ApplicationRecord
  extend ActsAsFavoritor::FavoriteScopes

  belongs_to :favoritable, polymorphic: true
  belongs_to :favoritor, polymorphic: true
  belongs_to :folder, optional: true
  has_many :favorite_folders

  def block!
    update!(blocked: true)
  end
end
