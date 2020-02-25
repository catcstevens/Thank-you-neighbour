class Listing < ApplicationRecord
    has_one :area
    has_many :borrowers
    has_one :neighbour
    has_one :condition
    has_many :photos
    has_many :questions
    has_many :ratings
    has_many :reviews
end
