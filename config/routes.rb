Rails.application.routes.draw do
  resources :tickets
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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

=begin
  get"/peliculas",to:"peliculas#index"
  get"/peliculas/new",to:"peliculas#new
  get"/peliculas/:id",to:"peliculas#show"
  post"/peliculas",to:"peliculas#create
  get"/peliculas/id/edit",to:"peliculas#update
  put"/peliculas/:id",to:"peliculas#update
  delete"/peliculas/id"to:"peliculas#destroy"
=end
end
