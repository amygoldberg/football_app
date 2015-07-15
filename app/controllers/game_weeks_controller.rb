class GameWeeksController < ProtectedController

  # set_user as a private method
  # before_action :set_user

  # /user/:user_id/game_weeks
  def index

    #retrieve the user's game_weeks
    @game_weeks = current_user.game_weeks
    render json: @game_weeks
  end

  # GET /users/:user_id/game_weeks/:id
  def show

    # find a specific game_week for a user
    @game_week = @user.game_weeks.find(params[:id])
    render json: @game_week

  end

  def create
    if current_user.admin
      @game_week = current_user.game_weeks.create(game_week_params)
      # @game_week.init(@user)
      if (@game_week.save)
        render json: @game_week, status: :created
      else
        render json: @game_week.errors, status: :unprocessable_entity
      end
    else
      render status: :unauthorized
    end
  end

  private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def game_week_params
    params.require(:game_week).permit(:week_number, :season, :master, :status, :user)
  end

end
