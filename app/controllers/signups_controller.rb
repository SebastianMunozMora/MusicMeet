class SignupsController < ApplicationController
    def create
        @practice = Practice.find(params[:practice_id])
        @practice.users << current_user

        redirect_to practices_path
    end
    def destroy
        @signup = Signup.find(params[:id]).destroy
        redirect_to practices_path
    end
    private
    def signup_params
        params.require(:signups).permit(:user, :practice)
    end
end