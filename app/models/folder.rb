class Folder < ApplicationRecord
  has_many :favorites
  has_many :favorite_folders
  belongs_to :user
end
