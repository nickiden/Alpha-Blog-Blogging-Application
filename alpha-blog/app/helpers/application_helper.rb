module ApplicationHelper
    
    # method: gravatar_for
    # Description: 
    #              Converts email to lowercase, creates md5 hash based
    #.             of that email, adds that hash to gravatar url and tags image
    #
    def gravatar_for(user, options = {size: 80})
        email_address = user.email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        size = options[:size]
        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
    end 
    
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
