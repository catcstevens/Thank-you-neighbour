class Condition < ApplicationRecord
  belongs_to :listing
    enum condition: { excellent: 0, good: 1, ok: 2, well_loved: 3 }
end
