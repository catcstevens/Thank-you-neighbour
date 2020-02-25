class AddUserToListing < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :condition, foreign_key: true
    add_reference :listings, :neighbour, foreign_key: true
    add_reference :listings, :photo, foreign_key: true
  end
end
