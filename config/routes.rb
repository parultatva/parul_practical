Rails.application.routes.draw do
  get 'users/auth_index'

  resources :tweets
  devise_for :users
  # get 'home/index'
  root to: 'home#index'
  namespace :api do
  namespace :v1 do
   resources :tweets
  end
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
