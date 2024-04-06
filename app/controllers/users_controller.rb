class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        ActiveRecord::Base.transaction do
            user = User.create!(user_params)
            Category.create!([
                { name: "goods", user_id: user.id },
                { name: "furniture", user_id: user.id },
                { name: "fashion", user_id: user.id }
            ])
        end

        redirect_to auth_path

        rescue => e
            render :new
    end

    private

    def user_params
        params.require(:user).permit(
            :name, :email, :password, :password_confirmation, :role
        )
    end

end
