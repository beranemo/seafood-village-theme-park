Rails.application.routes.draw do
  # For details on the DSL available within this file
  # see http://guides.rubyonrails.org/routing.html
  get "/park/sign_up", to: "users#sign_up"
  post "/park", to: "users#sign_up_submit"
  
  root 'attractions#index'
  resources :attractions, only: [:index]
  
  resource :sessions, only: [:new, :create, :destroy]
end
