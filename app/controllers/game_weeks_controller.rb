class GameWeeksController < ProtectedController

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

  # ONLY an admin should be able to create a new game_week --> IF admin ?
  # POST /users/:user_id/game_weeks
#   def create
#     @game_week = @user.game_weeks.build(game_week_params)

#     if @game_week.save
#       render json: @game_week, status: :created
#     else
#       render json: @game_week.errors, status: :unprocessable_entity
#   end
# end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  # def game_week_params
  #   params.require(:game_weeks).permit(:week_number, :season)
  # end

end
