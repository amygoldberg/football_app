class AuthController < ApplicationController
  def login
    credentials = login_params
    user = User.find_by username: credentials[:username]

    # get the user, if they exist and the authenticate returns true, send back the user or the token
    if user && user.authenticate(credentials[:password])
      render json: user
    else
      head :bad_request
    end
  end

  # create new user
  # bcrypt by default requires a password confirmation but merge says you do not need it
  # automatically merge with login params instead
  def register
    user = User.new(login_params.merge(password_confirmation: nil))

    if user.save!
      render json: user
    else
      head :bad_request
    end
  end

  # strong params
  private

  # even though in our database we are storing a password_digest and a token, here we just want to recieve a password
  def login_params
    params.require(:auth).permit(:name, :email, :username, :password)
  end

end
