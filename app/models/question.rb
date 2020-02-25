class Question < ApplicationRecord
  belongs_to :listing
  belongs_to :borrower
end
