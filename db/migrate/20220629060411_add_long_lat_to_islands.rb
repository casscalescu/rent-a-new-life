class AddLongLatToIslands < ActiveRecord::Migration[6.1]
  def change
    add_column :islands, :longitude, :float
    add_column :islands, :latitude, :float
  end
end
