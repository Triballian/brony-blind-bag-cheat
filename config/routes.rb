BronyBlindBagCheat::Application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :figures
  get 'figures/code_location'
  root to: 'figures#new'
end

# The priority is based upon order of creation: first created -> highest
# priority.
# Se how all your routes lay out with "rake routes"

# You can have the root of your site routed with "root"
# root to: 'welcome#index'

# Example of regular route:
# get 'products/:id' => 'catalog#view'

# Example of named route that can be invoked with
# purchase_url(id: product.id)
#   get 'prducts/:id/purchase' => 'catalog#purchase', as: :purchase

# Example resource route (map HTTP verbs to controller action
# automatically):
#   resources :prducts

# Example resource route with options:
#   resources :products do
#     member do 
#       get 'short'
#       post 'toggle'
#     end

# collection do
# get 'sold'
# end

# Example resource route with sub-resources:
# resources :products do
#    resources :comments, :sales
#    resources :seller
# end

# Example resource route with more complex sub-resources:
#  resources :prducts do
#    resources :comments
#    resources :sales do
#      get 'recent', on: :collection
#    end
# end

# Example resources route withing a namespace
#   namespce :admin do
#     # Directs /admin/products/* to Admin::ProductsController
#     # (app/controller/admin/products_controller.rb)
#     resources :prducts
#   end





