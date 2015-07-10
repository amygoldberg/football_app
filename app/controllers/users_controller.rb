class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

    # DO I NEED THIS / LOGIN?
    # GET /users/:id
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  # DO I NEED THIS / AUTH?
  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: users_url
    else
      render json: @users.errors, status: :unprocessable_entity
     end
  end

  # POST for game_week form?
  # def create

  # end

  # PATCH /users/:id
  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        head :no_content
      else
        render json: @user.errors, status: :unprocessable_entity
      end
  end

  # PATCH to edit game_week form wins
  # def update
  # end

  private
  def user_params
    params.require(:user)
    .permit(:username, :password, :name, :admin, :weekly_score, :total_score)
  end

  end
