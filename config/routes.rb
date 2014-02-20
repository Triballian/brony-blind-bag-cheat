BronyBlindBagCheat::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :figures
  get 'figures/code_location'
  root to: 'figures#new'
end
