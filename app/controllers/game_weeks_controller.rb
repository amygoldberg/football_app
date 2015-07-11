class GameWeeksController < ApplicationController

  # set_user as a private method
  before_action :set_user

  # /user/:user_id/game_weeks
  def index

    #retrieve the user's game_weeks
    @game_weeks = @user.game_weeks
    render json: @game_weeks
  end

  # GET /users/:user_id/game_weeks/:id
  def show

    # find a specific game_week for a user
    @game_week = @user.game_weeks.find(params[:id])
    render json: @game_week

  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

end
