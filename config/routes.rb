TimeTracker::Application.routes.draw do
  resources :activities

  get "start/index"
  match 'start' => 'start#index'

  post "start/register"

  resources :clients do
    resources :engagements do
      resources :activities
    end
  end

  #resources :engagements
  resources :engagements do
    resources :activities
  end

  resources :activities

  root :to => "start#index"

  mount ApiTaster::Engine => '/api_taster' if Rails.env.development?

  if Rails.env.development?
    ApiTaster.routes do
      get '/activities', {}
      post '/activities', {}
      get '/activities/new', {}
      get '/activities/:id/edit', {}
      get '/activities/:id', {}
      put '/activities/:id', {}
      delete '/activities/:id', {}
      get '/start/index', {}
      post '/start/register', {}
      get '/clients/:client_id/engagements/:engagement_id/activities', {:client_id => 1}
      post '/clients/:client_id/engagements/:engagement_id/activities', {}
      get '/clients/:client_id/engagements/:engagement_id/activities/new', {}
      get '/clients/:client_id/engagements/:engagement_id/activities/:id/edit', {}
      get '/clients/:client_id/engagements/:engagement_id/activities/:id', {}
      put '/clients/:client_id/engagements/:engagement_id/activities/:id', {}
      delete '/clients/:client_id/engagements/:engagement_id/activities/:id', {}
      get '/clients/:client_id/engagements', {}
      post '/clients/:client_id/engagements', {}
      get '/clients/:client_id/engagements/new', {}
      get '/clients/:client_id/engagements/:id/edit', {}
      get '/clients/:client_id/engagements/:id', {}
      put '/clients/:client_id/engagements/:id', {}
      delete '/clients/:client_id/engagements/:id', {}
      post '/clients', {}
      get '/clients/new', {}
      get '/clients/:id/edit', {}
      get '/clients/:id', {}
      put '/clients/:id', {}
      delete '/clients/:id', {}
      get '/engagements/:engagement_id/activities', {}
      post '/engagements/:engagement_id/activities', {}
      get '/engagements/:engagement_id/activities/new', {}
      get '/engagements/:engagement_id/activities/:id/edit', {}
      get '/engagements/:engagement_id/activities/:id', {}
      put '/engagements/:engagement_id/activities/:id', {}
      delete '/engagements/:engagement_id/activities/:id', {}
      get '/engagements', {}
      post '/engagements', {}
      get '/engagements/new', {}
      get '/engagements/:id/edit', {}
      get '/engagements/:id', {}
      put '/engagements/:id', {}
      delete '/engagements/:id', {}
      get '/activities', {}
      post '/activities', {}
      get '/activities/new', {}
      get '/activities/:id/edit', {}
      get '/activities/:id', {}
      put '/activities/:id', {}
      delete '/activities/:id', {}
      get '/clients', {}

        get '/activities', {}
        post '/activities', {}
        get '/activities/new', {}
        get '/activities/:id/edit', {}
        get '/activities/:id', {}
        put '/activities/:id', {}
        delete '/activities/:id', {}



    end
  end

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
