class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # @user = User.new(username: user[:username], email: user[:email], )
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path # renders :new page
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update; end

  def destroy; end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
