class Api::V1::UsersController < ApplicationController

  def auth
    @user = User.find_by(email: user_params[:email])
    if @user.valid_password?(user_params[:password])
      render json: @user
    else
      render json: {message: "erro de autenticação"}
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end


  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
