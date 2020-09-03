Rails.application.routes.draw do

# set root page to home
  root 'pages#home'
  
# set get section to alternate pages
  get 'about', to: 'pages#about'
  
  
# resource list for models
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
end
