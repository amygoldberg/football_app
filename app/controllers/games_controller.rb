class GamesController < ApplicationController

  before_action :set_game_week

  # /users/:user_id/game_weeks/:game_weeks_id/games
  # get all the games for a specific game week
  def index
    @games = @game_week.games
    render json: @games
  end

  # GET /users/:user_id/game_weeks/:game_weeks_id/games/:game_id
  # get a specific game from a specific game_week
  def show
    @game = @game_week.games.find(params[:id])
    render json: @game
  end

  private

  def set_game_week
    @game_week = GameWeek.find(params[:game_week_id])
  end

end
