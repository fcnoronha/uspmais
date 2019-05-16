Rails.application.routes.draw do


  # get 'user/index', to 'user#index' (Same as bellow)
  get 'user/index'
  get 'org/index'
  get 'event/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Automatically defining basic routes for user
  resources :user
  resources :org
  resources :event

  # Its a vision to application root
  # get '/', to 'user#index' (Same as bellow)
  root 'user#index'

end
