Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :backyards do
  	resources :reviews, only: [:create, :edit, :update, :destroy]
  	resources :bookings
  end
  get '/users', to: 'pages#profile', as: 'user_profile'
  get '/users/backyards', to: 'pages#profilebackyards', as: 'user_profile_backyards'
  get '/users/bookings', to: 'pages#profilebookings', as: 'user_profile_bookings'
  get '/users/confirmation', to: 'pages#profileconfirmation', as: 'user_profile_confirmation'
  get '/users/reviews', to: 'pages#profilereviews', as: 'user_profile_reviews'
  resources :users, only: [:update]
end
