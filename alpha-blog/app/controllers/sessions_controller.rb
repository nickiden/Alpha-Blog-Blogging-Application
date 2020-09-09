class SessionsController < ApplicationController
    
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase) 
    # if valid or invalid
    if user && user.authenticate(params[:session][:password])
      # store session 
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully"
      redirect_to user
      
    else
      flash.now[:alert] = "There was something wrong with your login details"
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "logged out"
    redirect_to root_path
  end


    
end 