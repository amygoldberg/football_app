class CreateGamesTeamsJoinTable < ActiveRecord::Migration
  def change
    create_table :games_teams, id: false do |t|
      t.integer :game_id
      t.integer :team_id
    end
  end
end
