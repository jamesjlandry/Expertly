class UserController < ApplicationController


    def create
        user = User.create(user_params)

        render json: user
    end


    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :field_id)
    end

end