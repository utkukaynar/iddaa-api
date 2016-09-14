class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :code
      t.string :league
      t.date :date
      t.time :time
      t.string :rate
      t.string :rate_code
      t.string :teams
      t.string :guess
      t.string :guess_code
      t.string :status
      t.float :probability

      t.timestamps
    end
  end
end
