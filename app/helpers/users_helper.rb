module UsersHelper
  def follow_button(user)
    return if current_user.id == user.id

    if !current_user.following?(user)
      render 'users/follow_button', user: user
    else
      render 'users/following_button'
    end
  end

  def followers_list(_user)
    if @user.followers.count.positive?
      render 'users/followers_list'
    else
      'No followers for now.'
    end
  end

  def to_follow(user)
    return if current_user.id == user.id

    render 'users/to_follow', user: user unless current_user.following?(user)
  end
end
