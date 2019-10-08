class SignupsController < ApplicationController
    private
    def signup_params
        params.require(:signups).permit(:date, :location, :description, :owner_id)
    end
end