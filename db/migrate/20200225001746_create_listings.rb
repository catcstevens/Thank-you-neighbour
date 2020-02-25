class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.date :from
      t.date :to
      t.integer :price
      t.integer :deposit
      t.text :delivery
      t.integer :min_rental

      t.timestamps
    end
  end
end
