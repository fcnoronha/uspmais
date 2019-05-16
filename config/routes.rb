Rails.application.routes.draw do

  get 'session/new'
  # get 'user/index', to 'user#index' (Same as bellow)
  get 'user/index'
  get 'org/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Automatically defining basic routes for user
  resources :user
  resources :org

  # Its a vision to application root
  # get '/', to 'user#index' (Same as bellow)
  root 'user#index'

  # Login routes
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
