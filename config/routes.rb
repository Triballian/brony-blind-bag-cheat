BronyBlindBagCheat::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :figures
  root to: 'figures#index'
end
