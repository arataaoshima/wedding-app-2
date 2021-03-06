Rails.application.routes.draw do
  
  get 'attendance/new'
  post 'attendance/create'
  get 'attendance/index'
  get 'attendance/thankyou'
  get 'attendance/cantcome' =>"attendance#sorry"
  post 'attendance/sorrysend'
  get 'canntocome/land' => 'attendance#sorry_land'
  get '/backup' => 'attendance#backup'
  
  get 'attendance/list'
  post 'attendance/delete/:id' => "attendance#delete"
  get "/attendance/update/:id" => "attendance#update"
  post "/attendance/update/:id" => "attendance#change"

  get 'user/login' =>"user#login_page"
  post 'user/login' =>"user#login"
  post "/logout" => "user#logout"
  get "user/new" => "user#new"
  post "user/create" => "user#create"
  get "user/index" =>"user#index"


  get '/' =>"welcome#home"
  get '/land'=>"welcome#land"
  get '/place' =>'welcome#place'

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
