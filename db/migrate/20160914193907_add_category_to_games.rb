class AddCategoryToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :category, :string
  end
end
