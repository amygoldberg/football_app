class CreateGameWeeks < ActiveRecord::Migration
  def change
    create_table :game_weeks do |t|
      t.integer :week_number
      t.date :season
      t.boolean :master
      t.boolean :status
      t.references :user, index: true, foreign_key: true
    end
  end
end
