class AuthController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = login(params[:email], params[:password])
        if @user
            redirect_to root_path, status: :ok
        else
            render :new, status: unoauthorized
        end
    end
end
