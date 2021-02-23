Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :backyards, only: [:index, :show, :new, :create] do
  	resources :bookings	
  end
end
