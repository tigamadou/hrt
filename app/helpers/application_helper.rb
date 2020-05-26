module ApplicationHelper
  def user_photo(user)
    if user.photo.attached?
      render 'shared/photo', user: user
    else

      render 'shared/gravatar', user: user
    end
  end

  def user_cover(user)
    if user.cover_image.attached?
      render 'shared/cover', user: user
    else

      render 'shared/default_cover', user: user
    end
  end

  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like

      link_to(post_like_path(
                id: like.id,
                post_id: post.id
              ),
              method: :delete,
              class: ' has-text-danger') do
        concat content_tag :span, fa_icon('heart'), class: 'icon'
        concat content_tag :span, post.likes.count
      end

    else
      link_to(post_likes_path(post_id: post.id), method: :post, class: 'has-text-grey') do
        concat content_tag :span, fa_icon('heart'), class: 'icon'
        concat content_tag :span, post.likes.count
      end
    end
  end
end
