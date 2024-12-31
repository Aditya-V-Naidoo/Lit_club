class ChangePasswordsController < ApplicationController
  def new
      
  end

  def create
    @user = User.new(params.require(:user).permit(:password, :SQ, :AK))
    if @user.update
     flash[:notice] = "The password has been updated successfully"
    else
      flash[:notice] = "The attempt to change the password was not successful"
      render 'edit'
    end
  end

  
end