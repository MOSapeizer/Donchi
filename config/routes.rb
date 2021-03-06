Rails.application.routes.draw do

  root 'course#show'

  devise_for :users, controllers: { registrations: "custom/registrations" }
  devise_scope :user do
    get 'custom/registrations/custom_new', to: 'custom/registrations#custom_new', as: 'custom_new'
    post 'custom/registrations/custom_create', to: 'custom/registrations#custom_create', as: 'user_custom_create'
  end



  as :user do
    get 'login' => 'devise/sessions#new', :as => :new_user_login
    post 'login' => 'devise/sessions#create', :as => :user_login
    get 'signup' => 'devise/registrations#new', :as => :user_signup
    #delete 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # resources 'home'

  get 'sign_up_course' => 'course#sign_up_course'
  get '/course/:title/sign_in' => 'course#sign_in'

  resources :course
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
