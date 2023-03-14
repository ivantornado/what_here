# frozen_string_literal: true

class FavoriteFolder < ApplicationRecord
  belongs_to :favorite
  belongs_to :folder
end
