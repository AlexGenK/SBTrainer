Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :championships do
    resources :matches do
      resources :bets
    end
  end

  root to: 'championships#index'
end
