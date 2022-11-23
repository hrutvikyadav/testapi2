Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cyclers
      resources :iv_data
      resources :items
      resources :test_objects
      resources :schedule_files
      resources :tests
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
