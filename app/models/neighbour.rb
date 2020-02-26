class Neighbour < ApplicationRecord
  # belongs_to :listing
  has_many :ratings
  has_many :reviews
end
