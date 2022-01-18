class RegistrationController < ApplicationController
    def new 
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end