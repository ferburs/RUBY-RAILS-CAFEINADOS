Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  #get 'users/sign_out' => 'sessions#destroy', :as => :destroy_user_session

  root 'peliculas#index'

  resources :entradas
  resources :funcions
  resources :salas
  resources :peliculas
  resources :profiles, only: [:show, :edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
