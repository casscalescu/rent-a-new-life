class CreateIslands < ActiveRecord::Migration[6.1]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :location
      t.float :price_per_night
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
