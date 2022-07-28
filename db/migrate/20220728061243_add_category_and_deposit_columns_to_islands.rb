class AddCategoryAndDepositColumnsToIslands < ActiveRecord::Migration[6.1]
  def change
    add_column :islands, :deposit, :string
    add_column :islands, :category, :string
  end
end
