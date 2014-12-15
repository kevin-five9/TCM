Ror::Application.routes.draw do
devise_for :users, :path_prefix => 'd'

match '/topics/list',  :controller => 'topics', :action => 'list'
match '/replies/list', :controller => 'replies', :action => 'list'
match '/projects/statistic', :controller => 'projects',:action => 
'statistic'

resources :users do
  resources :profiles,:emails,:phones,:properties,:loan_waits,:family
end

resources :projects do
  resources :topics
end
resources :topics do
  resources :replies
end
resources :properties do
  resources :loans
end
resources :users,:emails,:phones,:genders,:profiles,:photos

resources :school_types,:job_types
resources :languages,:templates,:statuses
resources :projects, :topics, :replies,:permissions,:labels
resources :states,:cities,:street_types,:school_types,:job_types
resources :property_types,:property_ownship,:properties,:property_usages
resources :loan_types,:loans,:loan_ranges,:loan_rates,:loan_ltvs,:loan_statuses,:loan_waits

resources :messages
resources :message_users,only: [:index,:new,:create,:destroy,:show]
  
resources :property_owners, only: [:destroy,:update]
root :to => "photos#index"
get '/*url' => 'application/pages#show', as: :page
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
  # match ':controller(/:action(/:id(.:format)))'
end
