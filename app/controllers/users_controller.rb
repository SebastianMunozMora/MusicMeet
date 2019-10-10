class UsersController < ApplicationController
    def edit        
        @user = User.find(params[:id])
    end
    def update
        User.find(params[:id]).update(user_params[:id])
        redirect_to practices_path
    end
    def show
        @user = User.find(params[:id])
    end
    private
    def user_params
        params.require(:users).permit(:instrument, :name, :style)
    end
end