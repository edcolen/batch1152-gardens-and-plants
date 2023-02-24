Rails.application.routes.draw do
  root 'gardens#index'

  resources :gardens, only: %i[index show] do
    resources :plants, shallow: true, only: %i[create destroy]
  end

  # resources :plants, only: %i[destroy]
end
