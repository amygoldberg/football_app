class TeamsController < ProtectedController

before_action :set_game

# /users/:user_id/game_weeks/:game_weeks_id/games/:game_id/teams
def index
  @teams = @game.teams
  render json: @teams
end

# /users/:user_id/game_weeks/:game_weeks_id/games/:game_id/teams/:team_id
def show
  @team = @game.teams.find(params[:id])
  render json: @team
end

private

def set_game
  @game = Game.find(params[:game_id])
end

end
