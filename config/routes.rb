PhotogurInClass::Application.routes.draw do
  root :to => 'pictures#index'

  resources :pictures

  # # ORDER MATTERS! Rails matches routes in order.
  # # Matches /pictures
  # get 'pictures' => 'pictures#index'
  
  # # Matches /pictures/SOMEID/edit
  # get  'pictures/:id/edit' => 'pictures#edit'
  # post 'pictures/:id'      => 'pictures#update'

  # # Matches /pictures/SOMEID - don't do this
  # # get 'pictures/:id' => 'pictures#show' # bad place

  # # Matches /pictures/new
  # get 'pictures/new' => 'pictures#new'
  # post 'pictures' => 'pictures#create'

  # get 'pictures/:id' => 'pictures#show'
  # # get 'pictures/2' => 'pictures#show2'
  # # get 'pictures/3' => 'pictures#show3'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
