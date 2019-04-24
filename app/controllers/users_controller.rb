class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
   # @user = User.find_by(id: params[:id])
   @user = User.find(params[:id])
  @courses = @user.courses
  end
end
