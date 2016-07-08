class UsersController < ApplicationController
    
     def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Sign in Successful"
            redirect_to root_path
        else
            flash[:danger] = "Sign in Unsuccessful"
            redirect_to root_path
        end
      end
    
    
    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :country)
    end
end
