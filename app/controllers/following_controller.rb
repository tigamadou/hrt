class FollowingController < ApplicationController
    before_action :set_followed
    def create
                
        current_user.follow(@user) unless current_user.following?(@user)
        redirect_to show_user_path(@user.username), notice: 'User Followed.'
    end

    private
        def set_followed
            @user = User.find(params[:user][:user_id])
        end

        def folowing_params
            params.require(:user).permit(:user_id)
        end
end
