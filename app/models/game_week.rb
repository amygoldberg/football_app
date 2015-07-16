class GameWeek < ActiveRecord::Base
  has_many :games
  belongs_to :user

  def create_games games
    games.each do |game|
      team_one = Team.find_by_name(game[:favorite][:name])
      team_two = Team.find_by_name(game[:underdog][:name])
      new_game = self.games.create(spread: game[:points][:points])
      GamesTeams.create(game: new_game, team: team_one)
      GamesTeams.create(game: new_game, team: team_two)
    end
  end
end
