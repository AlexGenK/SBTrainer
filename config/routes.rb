Rails.application.routes.draw do
  resources :championships

  root to: 'championships#index'
end
