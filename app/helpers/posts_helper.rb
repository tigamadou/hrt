module PostsHelper
  def plural?(count)
    'S' if count > 1
  end

  def actions_menu(post)
    render 'posts/actions', post: post if post.author.id == current_user.id
  end

  def comment_like(post)
    render 'posts/comment_like', post: post
  end
end
