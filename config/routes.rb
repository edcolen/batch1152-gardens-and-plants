Rails.application.routes.draw do
  root 'gardens#index'

  resources :gardens, only: %i[index show]
end
