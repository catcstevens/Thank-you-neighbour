class Condition < ApplicationRecord
  belongs_to :listing
  enum sex: { excellent: 0, good: 1, ok: 2, well-loved: 3 }
end
