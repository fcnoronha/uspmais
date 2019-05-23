Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/about'
  # get 'user/index', to 'user#index' (Same as bellow)
  get 'user/index'
  get 'org/index'
  get 'event/index'
  get 'event/my'
  get 'session/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Automatically defining basic routes for user
  resources :user
  resources :org
  resources :event

  # Its a vision to application root
  # get '/', to 'user#index' (Same as bellow)
  root 'static_pages#home'

  # Login routes
  get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

end
