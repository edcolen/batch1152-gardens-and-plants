Rails.application.routes.draw do
  root 'gardens#index'

  resources :gardens, only: %i[index show] do
    resources :plants, only: %i[create]
  end

  resources :plants, only: %i[destroy] do
    resources :plant_tags, only: %i[new create]
  end
end
