class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create, :index]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        if user 
            render json: user 
        else 
            render json: { error: "Not found"}, status: 404
        end
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            token = encode_token({user_id: user.id})
            render json: {user: user, token: token}
          else
            render json: {error: user.errors.full_messages}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
            render json: {user: user}
          else
            render json: {error: user.errors.full_messages}
        end
    end

    private

    def user_params
        params.permit(:username, :password, :facechart, :background_color)
    end

end
