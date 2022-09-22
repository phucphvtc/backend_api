Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pre_builds
      resources :price_ranges
      resources :purposes
      resources :details
      resources :types
      get '/search', to: 'search#search'
   
    end
  end
end
