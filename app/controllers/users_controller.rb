class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
      @user_modes = [  
      ['Light Mode', 'light_mode'],
      ['Dark Mode', 'dark_mode'],
      ['Ease Mode', 'ease_mode']
    ]
  end

  def create
    @user = User.new(params.require(:user).permit(:user_name, :password , :email_id, :SQ, :AK, :user_mode))
    if @user.save
     flash[:notice] = "The User has been Created successfully"
    else
      flash[:notice] = "The User could not be created"
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])

    @user_modes = [  
      ['Light Mode', 'light_mode'],
      ['Dark Mode', 'dark_mode'],
      ['Ease Mode', 'ease_mode']
    ]
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:user_name, :password , :email_id, :SQ, :AK, :user_mode))  
      flash[:notice] = "The User has been updated successfully"
    else
      flash[:notice] = "The User could not be updateded"
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to users_path
     
     
  end
end