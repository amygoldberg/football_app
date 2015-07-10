class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :team1_score
      t.integer :team2_score
      t.datetime :game_date
      t.decimal :spread
      t.boolean :status
      t.string :winner
      t.references :game_week, index: true, foreign_key: true
    end
  end
end
