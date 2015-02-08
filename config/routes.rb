Rails.application.routes.draw do
  resources :pastries

  get 'beverages' => 'beverages#index'

  get 'beverages/new' => 'beverages#new' #The first part is the route to our new template

  post 'beverages/' => 'beverages#create' #beverages is the url that we're posting to. the controller receives the url and then sends it to the right controller

  get 'beverages/:id/edit' => 'beverages#edit', as: :edit_beverage
  patch 'beverages/:id' =>'beverages#update'

  get 'beverages/:id' => 'beverages#show', as: :beverage #the as: :bean is naming for the route

# resources :beverages
delete 'beverages/:id' => 'beverages#destroy', as: :delete_beverage
 #  delete 'beverages/:id/destroy' => 'beverages#destroy'
 # delete 'beverages' => 'beverages#destroy'

  #beverages/edit is the url we're getting from. the controller receives the url and then sends it to the right controller, beverages#edit

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
