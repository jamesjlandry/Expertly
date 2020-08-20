class UsersController < ApplicationController

    def index
        users = User.all 

        render json: users, :include => [:credentialfields, :questionfields]
    end


    def create
        user = User.create({username: params[:username], password: params[:password]})
            session[:user_id] = user.id
            render json: user, :include => [:credentialfields, :questionfields, :answeredquestions, :questions]
    end


    # private

    # def user_params
    #     params.require(:user).permit(:username, :password)
    # end

end