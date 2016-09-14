class RemoveStatusAndCountry < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :status
    remove_column :games, :country
  end
end
