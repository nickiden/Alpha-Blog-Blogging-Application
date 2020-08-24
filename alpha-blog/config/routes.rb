Rails.application.routes.draw do

# set root page to home
  root 'pages#home'
  
# set get section to alternate pages
  get 'about', to: 'pages#about'
end
