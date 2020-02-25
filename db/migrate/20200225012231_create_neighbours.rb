class CreateNeighbours < ActiveRecord::Migration[5.2]
  def change
    create_table :neighbours do |t|
      t.string :name
      t.string :email
      t.string :password
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
