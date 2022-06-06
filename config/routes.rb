Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  
  resources :championships do
    resources :matches do
      resources :bets
    end
  end

  resources :users do
    resource :account
  end

  get 'contacts', to: 'single_pages#contacts'
  
  root to: 'championships#index'
end
