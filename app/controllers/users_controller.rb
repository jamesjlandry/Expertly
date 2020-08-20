class UsersController < ApplicationController

    def index
        users = User.all 

        render json: users
    end


    def create
        user = User.create({username: params[:username], password: params[:password]})
            session[:user_id] = user.id
            render json: {username: user.username, id: user.id}
    end


    # private

    # def user_params
    #     params.require(:user).permit(:username, :password)
    # end

end