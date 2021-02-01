class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, status: :ok
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
