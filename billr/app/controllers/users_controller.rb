class UsersController < ApplicationController
  def index
    @users = User.order(:email)
  end
  def new
    @user = User.new
  end
  def create
    User.create(params[:user])
    redirect_to(users_path)
  end
end
