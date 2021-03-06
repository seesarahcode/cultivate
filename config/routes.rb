Cultivate::Application.routes.draw do



  resources :gardens do
      resources :plants
  end

  devise_for :views
  devise_for :users
  resources :orchards
  resources :trees
 
  resources :users
  resources :sheep
  resources :pigs
  resources :goats
  resources :ducks
  resources :chickens

  match '/gardens', to: 'gardens#index', via: 'get'
  match '/plants', to: 'plants#index', via: 'get'
  match '/chickens', to: 'chickens#index', via: 'get'
  match '/ducks', to: 'ducks#index', via: 'get'
  match '/pigs', to: 'pigs#index', via: 'get'
  match '/goats', to: 'goats#index', via: 'get'
  match '/sheep', to: 'sheep#index', via: 'get'
  match '/plants', to: 'gardens#index', via: 'get'
  match '/trees', to: 'orchards#index', via: 'get'
  match '/contact', to: 'home#contact', via: 'get'
  
  root 'home#index'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
