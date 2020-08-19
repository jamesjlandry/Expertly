class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: {username: user.username, id: user.id}
        else
            render json: 'sorry, bro, try again'
        end
    end

    def verify_log_in
        if session[:user_id]
            render json: {username: user.username, id: user.id}
        else
            render json: 'please log in'
        end
    end

    def log_out 
        session[:user_id] = nil
        render json: 'logged out'
    end
end
