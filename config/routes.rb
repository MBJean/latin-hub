Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboard#index"

  get "users/profile" => "user#show", as: :user_profile
  post '/dictionary', to: 'dictionary#search', as: 'dictionary'
  
end
