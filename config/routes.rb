BetaGeekspeakOrg::Application.routes.draw do
  match "shows/npr-feed.xml" => "feeds#episodes",
            :defaults => { :format => 'xml' }

  resources :geeks, :as => :users,
            :controller => :users,
            :id => /[A-Za-z0-9\.\_\-]+?/, :format => false

  resources :episode_audios
  resources :episode_images
  resources :bits

  resources :bits_episode do
    collection { post :sort }
  end
  
 
  resources :episodes, :id => /[0-9]+\/[0-9]+\/[0-9]+/ do
    resources :episode_audios
    resources :episode_images
  end

  match "/episodes/pending/" => "episodes#pending"
  resources :participants


  match "/episodes/:year/" => "episodes#year_archive", 
               :constraints => {:year => /\d{4}/ }
  match "/episodes/:year/:month/" => "episodes#month_archive", 
               :constraints => {:year => /\d{4}/, :month => /0[1-9]|1[0-2]/ }
               
               
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
  ActiveAdmin.routes(self)
  
  
  get '/admin/episodes/:id', :controller => "admin/episodes",
      :action => 'show', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  get '/admin/episodes/:id/edit', :controller => "admin/episodes",
          :action => 'edit', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  put '/admin/episodes/:id', :controller => "admin/episodes",
              :action => 'update', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  delete '/admin/episodes/:id', :controller => "admin/episodes",
              :action => 'destroy', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  get '/admin/users/:id', :controller => "admin/users",
      :action => 'show', :id => /[A-Za-z0-9\.\_\-]+?/, :format => false
  
  get '/admin/users/:id/edit', :controller => "admin/users",
      :action => 'edit', :id => /[A-Za-z0-9\.\_\-]+?/, :format => false
  
 # mount Refinery::Core::Engine => '/engin/refinery.geekspeak.org/'
  
  
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
  
  root :to => 'welcome#index'
  
  match '/lyle'    => redirect("/geeks/lyle")
  match '/ben'     => redirect("/geeks/ben")
  match '/alan'    => redirect("/geeks/alan")
  match '/al'    => redirect("/geeks/alan")
  match '/lindsey' => redirect("/geeks/lindsey")
  match '/rick'    => redirect("/geeks/rick")
  match '/brian'    => redirect("/geeks/brian")
  match '/alex'    => redirect("/geeks/alex")
  match '/john'    => redirect("/geeks/john")
  match '/users'    => redirect("/geeks")
  match '/users/:name' => redirect("/geeks/%{name}"),:format => false
         
  #match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  
  
end
