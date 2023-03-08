class Spot < ApplicationRecord
  has_many :favorites
  has_many :bookmarks
  acts_as_favoritable
end
