Agucb::Application.routes.draw do

  resources :shareds

  resources :messages

  resources :comments

  resources :ads

  resources :observations

  resources :associations

  resources :publications

  resources :enabled_players

  resources :activities

  resources :cards

  resources :events

  resources :scorers

  resources :matches

  resources :associateds

  get 'user/edit' => 'users#edit', :as => :edit_current_user
  get 'signup' => 'users#new', :as => :signup
  get 'signup_associated' => 'users#new_user_for_associated'
  get '/users/index', to: 'users#index'
  get '/users/change_state/:id', to: 'users#change_state'
  get '/users/new_user_for_associated/:associated_id', to: 'users#new_user_for_associated'
  post '/users' => 'users#create_user_for_associated'

  get 'logout' => 'sessions#destroy', :as => :logout
  get 'login' => 'sessions#new', :as => :login

  get '/associated/search', to: 'associateds#search'

  get '/register', to: 'teams#register'

  get '/publication/select_publications/:associated_id', to: 'publications#select_publications'
  post '/publication' => 'publications#shared_publications'
  get '/publication/shared_publications/:associated_id?:publication_id', to: 'publications#shared_publications'
  #get '/associations/agucb', to: 'associations#agucb'

  resources :sessions
  resources :users
  resources :teams
  resources :players

  root "home#inicio"

  get 'players_list/:id' => 'players#players_list'

  match '/direccion',    to: 'home#direccion',    via: 'get'
  match '/otb_japon',    to: 'home#otb_japon',    via: 'get'
  match '/beato_salomon',    to: 'home#beato_salomon',    via: 'get'
  match '/futbol8',    to: 'home#futbol8',    via: 'get'
  match '/agucb',    to: 'home#agucb',    via: 'get'
  match '/menu_agucb',    to: 'home#menu_agucb',    via: 'get'
  match '/dashboard',    to: 'home#dashboard', via: 'get'
  match '/stadistics',    to: 'stadistics#stadistics', via: 'get'
  match '/positions',    to: 'positions#index', via: 'get'


  get 'card/search' => 'cards#search'
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
