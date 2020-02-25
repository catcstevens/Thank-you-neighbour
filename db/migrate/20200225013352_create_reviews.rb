class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :neighbour, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
