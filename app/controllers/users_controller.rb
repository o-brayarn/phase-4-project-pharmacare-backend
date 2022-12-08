class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    user = User.create(user_params)
    if user.valid?
      session[:user_id] = user.id
      render json: user, serializer: PharmacySerializer
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:name, :email, :location, :phone_number, :password, :password_confirmation)
  end
end
