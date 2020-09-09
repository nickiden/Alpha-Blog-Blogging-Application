Rails.application.routes.draw do

# set root page to home
  root 'pages#home'
  
# set get section to alternate pages
  get 'about', to: 'pages#about'
  
  
# resource list for articles
  resources :articles
  
# signup user routes
  get 'signup', to: 'users#new'
  
# resource list for users
  resources :users, except: [:new]
  
# session creation for log in
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
