class PagesController < ApplicationController
# create home method    
  def home
    # send to articles path if logged in
    redirect_to articles_path if logged_in?
    
  end
  
  # create about page method
  def about
  end 
   
end
