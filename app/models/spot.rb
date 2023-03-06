class Spot < ApplicationRecord
  has_many :likes
  has_many :bucket_items
end
