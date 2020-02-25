class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.references :neighbour, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end