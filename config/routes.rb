Rails.application.routes.draw do
  
  resource :favorites do
    resources :comments, only: [:create, :update, :destroy]
  end

  root 'movies#index'

  
  
end
