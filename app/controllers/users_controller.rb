class UsersController < ApplicationController
    
     def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Sign up Successful"
            log_in @user
            redirect_to root_path
        else
            flash[:danger] = "Sign up Unsuccessful"
            redirect_to root_path
        end
     end
     
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
          flash[:success] = "Update Successful"
          redirect_to root_path   
        else
            flash[:danger] = "Update Unsuccessful"
            redirect_to root_path
        end
    end
    
    
    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :country)
    end
end
