class CredentialsController < ApplicationController


    def index 
        credentials = Credential.all

        render json: credentials
    end

    def create
        credential = Credential.create(credential_params)

        render json: credential
    end

    private

    def credential_params
        params.require(:credential).permit(:user_id, :years_in_field, :degree, :field_id)
    end
    
end