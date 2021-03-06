Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'doorkeeper/applications#index'

  get '/api/login', to: 'api/credentials#login'
end
