class PracticesController < ApplicationController
    def index
        @practices = Practice.all
    end
    def new
        @practice = Practice.new   
    end
    def create
        practice = Practice.new(practice_params)
        practice.save
        practice.owner_id = current_user.id
        current_user.practices << practice
        redirect_to practice_path(practice)
    end
    def show
        @practice = Practice.find(params[:id])
        @signups = Signup.all
    end
    def edit
        @practice = Practice.find(params[:id])
    end
    def update
        @practice = Practice.find(params[:id])
        @practice.update(practice_params)
        
        redirect_to practice_path
    end
    def destroy
        Practice.find(params[:id]).destroy

        redirect_to practices_path
    end
    private
    def practice_params
        params.require(:practice).permit(:date, :location, :description, :owner_id)
    end
end