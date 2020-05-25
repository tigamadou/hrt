module ApplicationHelper

	def user_photo(user)
		if user.photo.attached? 
		render 'shared/photo',user:user 
		else

		 render 'shared/gravatar',user:user
		end
	end

	def user_cover(user)
		if user.cover_image.attached? 
			render 'shared/cover',user:user 
		else

		 render 'shared/default_cover',user:user
		end
	end
end
