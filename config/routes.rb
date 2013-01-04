Staj::Application.routes.draw do
  root to: "home#index"
  get "commission/index"
  get "institution/index"
  get "student/index"
  match "/about" => "home#about"
  match "/contact" => "home#contact"
  resources :probations

  devise_for :users

  match "student" => "student#index"
  match "/student/proselects" => "student#proselects"
  match "/student/settings" => "student#settings"
  match "/student/reports" => "student#reports"
  #match "/student/groups" => "student#groups"
  #match "users/registration/sign_up" => "devise/registrations#new"
  match "commission" => "commission#index"
  #match "/admin/groups" => "admin#groups"

  match "institution" => "institution#index"
  match "/institution/proselects" => "probations#index"
  match "/institution/proselects/new" => "probations#new"
  match "/institution/proselects/:id/edit" => "probations#edit"
  match "/institution/proselects/:id" => "probations#show", via: :get
  match "/institution/proselects/:id" => "probations#update", via: :put
  match "/institution/proselects/:id" => "probations#destroy", via: :delete

  #get "commission/index"
  #get "institution/index"
  #resources :probations
  #resources :commission
  #resources :institution
  #resources :student
  #devise_for :users
  #get "student/index"
  #get "home/index"
  #match "commission" => "commission#index"
  #match "institution" => "institution#index"
  #match "home" => "home#index"
  #match "about" => "home#about"
  #match "contact" => "home#contact"
  #root :to => "home#index"
  #match "/index" => "user#index" gereksiz
  #match "/:email/index" => "user#content" gereksiz
  #match "/user/:email/index" => "user#index" gereksiz
  #get "users/home" => "home#index" gereksiz


  #authenticated :user do
     #root :to => 'home#index'
  #end
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
