Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :messages
    end

    namespace :v2 do
      resources :messages
      resources :gifs
      esources :users, only:[:index]
    end
  end
end
