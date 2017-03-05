BetaGeekspeakOrg::Application.routes.draw do
  #match "shows/npr-feed.xml" => "feeds#nprepisodes",
  #          :defaults => { :format => 'xml' }

  get "episodes/rss.xml", to: "feeds#episodes",
            :defaults => { :format => 'xml' }
  match "sitemap" => "feeds#sitemap",
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

  # resources :items, id: /[0-9]+\/.+/, only: [:index, :new, :create], format: false
  #       scope format: false do
  #   get '/items/*id/edit', to: "items#edit"
  #   patch '/items/*id', to: "items#update"
  #   put '/items/*id', to: "items#update"
  #   delete '/items/*id', to: "items#destroy"
  #   get '/items/*id', to: "items#show"
  # end

scope :id => /[0-9]+\/[0-9]+\/[0-9]+/ do
  #we need globs (*id) in routes for urls with slashs in them
  get '/episodes', to: "episodes#index", as: :episodes
  get '/episodes/new', to: "episodes#new", as: :new_episode
  get '/episodes/*id/edit', to: "episodes#edit", as: :edit_episode
  get '/episodes/*id', to: "episodes#show", as: :episode
  patch '/episodes/*id', to: "episodes#update"
  put '/episodes/*id', to: "episodes#update"
  post '/episodes', to: "episodes#create"
  delete '/episodes/*id', to: "episodes#destroy"
end

scope :episode_id => /[0-9]+\/[0-9]+\/[0-9]+/ do
  # we want audio filtered by episode
  get '/episodes/*episode_id/episode_audios', to: "episode_audios#index", as: :episode_episode_audios
  get '/episodes/*episode_id/episode_audios/new', to: "episode_audios#new", as: :new_episode_episode_audio
  get '/episodes/*episode_id/episode_audios/:id/edit', to: "episode_audios#edit", as: :edit_episode_episode_audio
  get '/episodes/*episode_id/episode_audios/:id', to: "episode_audios#show", as: :episode_episode_audio
  patch '/episodes/*episode_id/episode_audios/:id', to: "episode_audios#update"
  put '/episodes/*episode_id/episode_audios/:id', to: "episode_audios#update"
  post '/episodes/*episode_id/episode_audios', to: "episode_audios#create"
  delete '/episodes/*episode_id/episode_audios/:id', to: "episode_audios#destroy"

  # we want images filtered by episode
  get '/episodes/*episode_id/episode_images', to: "episode_images#index", as: :episode_episode_images
  get '/episodes/*episode_id/episode_images/new', to: "episode_images#new", as: :new_episode_episode_image
  get '/episodes/*episode_id/episode_images/:id/edit', to: "episode_images#edit", as: :edit_episode_episode_image
  get '/episodes/*episode_id/episode_images/:id', to: "episode_images#show", as: :episode_episode_image
  patch '/episodes/*episode_id/episode_images/:id', to: "episode_images#update"
  put '/episodes/*episode_id/episode_images/:id', to: "episode_images#update"
  post '/episodes/*episode_id/episode_images', to: "episode_images#create"
  delete '/episodes/*episode_id/episode_images/:id', to: "episode_images#destroy"

end

  # resources :episodes, :id => /[0-9]+\/[0-9]+\/[0-9]+/ do

  #   #get '/episodes/*id/edit', to: "episodes#edit"
  #   patch '/episodes/*id', to: "episodes#update"
  #   put '/episodes/*id', to: "episodes#update"
  #   delete '/episodes/*id', to: "episodes#destroy"
  #   get '/episodes/*id', to: "episodes#show"
    
    # resources :episode_audios
    # resources :episode_images
  # end

  get "/episodes/pending/", to: "episodes#pending"

  resources :participants


  get "/episodes/:year/", to: "episodes#year_archive", 
               :constraints => {:year => /\d{4}/ }
  get "/episodes/:year/:month/", to: "episodes#month_archive", 
               :constraints => {:year => /\d{4}/, :month => /0[1-9]|1[0-2]/ }
               
               
  devise_for :users, path: "auth", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  
  ActiveAdmin.routes(self)
  
  
  # get '/admin/episodes/:id', :controller => "admin/episodes",
  #     :action => 'show', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  # get '/admin/episodes/:id/edit', :controller => "admin/episodes",
  #         :action => 'edit', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  # put '/admin/episodes/:id', :controller => "admin/episodes",
  #             :action => 'update', :id => /[0-9]+\/[0-9]+\/[0-9]+/
  # delete '/admin/episodes/:id', :controller => "admin/episodes",
  #             :action => 'destroy', :id => /[0-9]+\/[0-9]+\/[0-9]+/
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
  
  get '/lyle'   , to: redirect("/geeks/lyle")
  get '/ben'    , to: redirect("/geeks/ben")
  get '/alan'   , to: redirect("/geeks/alan")
  get '/al'   , to: redirect("/geeks/alan")
  get '/lindsey', to: redirect("/geeks/lindsey")
  get '/rick'   , to: redirect("/geeks/rick")
  get '/brian'   , to: redirect("/geeks/brian")
  get '/alex'   , to: redirect("/geeks/alex")
  get '/john'   , to: redirect("/geeks/john")
  get '/users'   , to: redirect("/geeks")
  get '/users/:name', to: redirect("/geeks/%{name}"),:format => false
         
  #match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  
  
end
