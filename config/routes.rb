Rails.application.routes.draw do
  
  resource :favorites

  root 'movies#index'

  
end
