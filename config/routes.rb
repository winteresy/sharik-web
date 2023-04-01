Rails.application.routes.draw do
  resources :messages
  resources :conversations
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
 get '/authentification', to: 'pages#authentification'
  root 'pages#home'
  
  namespace :api, defaults: { format: :json }  do
    namespace :v1 do
      resources :posts, only: [:index, :show, :create, :update, :destroy]
    end
  end
end