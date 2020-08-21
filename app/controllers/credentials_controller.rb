class CredentialsController < ApplicationController


    def index 
        credentials = Credential.all

        render json: credentials
    end

    def create
        
        credential = Credential.create({user_id: params[:credentials][:user_id], years_in_field: params[:credentials][:years_in_field], degree: params[:credentials][:degree], field_id: params[:credentials][:field_id]})
        user = User.find_by(id: params[:user_id])
        render json: user, :include =>  [:credentialfields, :questionfields, :answeredquestions]
    end

    # private

    # def credential_params
    #     params.require(:credential).permit(:user_id, :years_in_field, :degree, :field_id)
    # end
    
end