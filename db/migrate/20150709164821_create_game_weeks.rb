class CreateGameWeeks < ActiveRecord::Migration
  def change
    create_table :game_weeks do |t|
      t.string :games
      t.integer :week_number
      t.date :season
      t.boolean :master
      t.boolean :status

      t.timestamps null: false
    end
  end
end
