class AddLeagueToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :league, :string
  end
end
