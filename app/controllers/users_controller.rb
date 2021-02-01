class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
