class ConvertRateToFloat < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :rate
    remove_column :games, :probability
    add_column :games, :rate, :float
    add_column :games, :probability, :integer
  end
end
