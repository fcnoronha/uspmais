Rails.application.routes.draw do

  # get 'user/index', to 'user#index' (Same as bellow)
  get 'user/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Automatically defining basic routes for user
  resources :user

  # Its a vision to application root
  # get '/', to 'user#index' (Same as bellow)
  root 'user#index'

end
