class CreateConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :conditions do |t|
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
