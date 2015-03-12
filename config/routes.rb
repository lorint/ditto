Rails.application.routes.draw do

  resources :match_events

  resources :events

  resources :user_place_category_matches

  resources :user_place_categories
    post '/user_place_categories', to: 'user_place_categories#create', defaults: { format: 'json'}

  resources :matches
    get '/grab', to: 'matches#grab', defaults: { format: 'json'}

  resources :user_places
    post '/user_places', to: 'user_places#create', defaults: { format: 'json'}

  resources :photos

  resources :places
    get '/yelp_api_search', to: 'places#yelp_search', defaults: { format: 'json'}

  resources :users
    get '/user_search', to: 'users#user_search', defaults: { format: 'json'}
    get '/users/:id/setup', to: 'users#setup'

  # get 'yelp_api_search', to: 'users#yelp_search', defaults: { format: 'json'}

  get '/login', to: 'sessions#new', as: :login
  # create a simple login form where the user will see a simple “Connect with Facebook” link.
  get '/auth/:provider/callback', to: 'sessions#create'
  # catch the provider’s callback. After a user authorizes your app,
  # the provider redirects the user to this url, so we can make use of their data.
  get '/auth/failure', to: 'sessions#failure'
  # when there’s a problem, or if the user didn’t authorize our application.


  get '/logout', to: 'sessions#destroy'


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
