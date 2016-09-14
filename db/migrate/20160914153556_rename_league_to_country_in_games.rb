class RenameLeagueToCountryInGames < ActiveRecord::Migration[5.0]
  def change
    rename_column :games, :league, :country
  end
end
