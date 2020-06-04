class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  layout 'account', only: %i[index show edit]

  def show
    @posts = @user.posts.ordered_by_most_recent.includes([:author])
  end

  private

  def set_user
    @user = User.find_by(username: params[:username])
  end

  def user_params
    params.require(:user).permit(:username, :full_name, :photo, :cover_image)
  end
end
