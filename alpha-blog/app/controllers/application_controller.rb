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
    
    # method: require_user
    # Description: 
    #              Checks if user trying to access area is logged in. If not, 
    #              then a message will appear and a re direct is used to log in page.
    #
    
    def require_user
        if !logged_in?
            flash[:alert] = "You must be logged in to perform that action"
            redirect_to login_path 
        end 
    end 
    
end
