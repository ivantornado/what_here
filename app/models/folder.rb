class Folder < ApplicationRecord
  has_many :favorites
  belongs_to :user
end
