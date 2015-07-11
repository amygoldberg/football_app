class TeamsController < ApplicationController

  # GET /teams to show all the teams
  def index
    @teams = Team.all
    render json: @teams
  end

  # GET /teams/:id
  def show
    @teams = Team.find(params[:id])
    render json: @team
  end

  private
   def team_params
    params.require(:team)
      .permit(:name, :logo)
  end

end
