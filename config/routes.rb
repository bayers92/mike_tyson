Rails.application.routes.draw do
  devise_for :reviewers, controllers: { registrations: "reviewers/registrations" }
  resources :reviewers

  resources :analytics

  resources :domains

  devise_for :clerks, controllers: { registrations: "clerks/registrations" }
  resources :clerks

  resources :demos

  devise_for :admins, controllers: { registrations: "admins/registrations" }

  resources :photos

  resources :schools

  resources :photo_links

  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :articles
  resources :users do 
    resources :tags
  end
  resources :background_infos
  resources :experiences
  resources :homepage_infos
  resources :personal_infos
  resources :projects
  resources :showcases
  resources :social_links
  resources :website_settings
  resources :photos
  resources :schools


  get 'tags/:tag', to: 'schools/#{school.id}/#students', as: :tag ## Don't think this is doing anything??

  resources :users do 
    get '/feed', to: 'users#feed', as: :feed
    get '/dashboard', to: 'users#dashboard', as: :dashboard
  end

  resources :schools do
    get '/roster', to: 'schools#roster', as: :roster
  end

  resources :personal_infos do
    # post 'crop', :on => :member
    get 'crop', to: 'personal_infos/#crop', as: :crop
  end



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
