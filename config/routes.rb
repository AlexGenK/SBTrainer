Rails.application.routes.draw do
  devise_for :users
  resources :championships

  root to: 'championships#index'
end
