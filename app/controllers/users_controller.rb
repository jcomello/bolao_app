class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "devise/new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
