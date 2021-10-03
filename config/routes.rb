Rails.application.routes.draw do
  resources :dog_houses, only: [:show, :index] do
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show,:index,:create]

end
