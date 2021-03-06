class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    # byebug
    @user = User.find_by(username: params[:username])
    #User#authenticate comes from BCrypt

    if @user && @user.authenticate(params[:password])
      # encode_token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      # If you want to use Serializer
      # render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
      render json: { user: @user, jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    # params.require(:user).permit(:username, :password)
    params.permit(:username, :password)
  end

end
