class SessionsController < ApplicationController
  def new
    
  end

  def create
    @users = User.all
    @users.each do |user|
      if params[:user] == user.user_name 
        user = User.find_by(user_name: params[:session][:user].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = use.id
          redirect_to literary_works_path
        end 
      elsif params[:user] == user.email_id
        user = User.find_by(email_id: params[:session][:user].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = use.id
          redirect_to literary_works_path
        end 
      else  
          render 'new'
      end
    end    
  end



  def destroy     
   sessions[:user_id] = nil
  end
end