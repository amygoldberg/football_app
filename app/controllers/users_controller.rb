class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users
  end


  # GET /users/:id
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  end
