Rails.application.routes.draw do
  # resources :reviews, only: [:index]
  # resources :dog_houses, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dog_houses, only: [:show] do
    # nested resource for reviews
    resources :reviews, only: [:show, :index]
    
  end
  # resources :reviews do
  #   resources :comments
  # end
  resources :dog_houses do
    resources :reviews do
      resources :comments
    end
  end
  # resources :reviews, only: [:show, :index, :create]
end
