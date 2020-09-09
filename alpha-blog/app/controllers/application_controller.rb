class ApplicationController < ActionController::Base
    
        helper_method :current_user, :logged_in?
        
    
     # method: current_user
    # Description: 
    #              Check for current user .. if not qurey the database for it
    #

    
    def current_user
       @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end 
    
    # method: logged_in?r
    # Description: 
    #              Checks if current user is logged in with the power of bool
    #
    
    def logged_in?
      !!current_user
    end 
    
    
end
