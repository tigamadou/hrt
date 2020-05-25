module PostsHelper

    def is_plural(n)
        "S" if n>1
    end
    
    def actions_menu(post)
    	render 'posts/actions',post: post if post.author.id == current_user.id
    end
end
