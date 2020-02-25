class AddUserToNeighbour < ActiveRecord::Migration[5.2]
  def change
    add_reference :neighbours, :rating, foreign_key: true
    add_reference :neighbours, :review, foreign_key: true
  end
end
