class DeleteTimeFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :time
    remove_column :games, :date
    add_column :games, :date, :datetime
  end
end
