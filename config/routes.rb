Rails.application.routes.draw do
  root 'home#index'
  resources :home, only: [:index] do
    post 'generate_avatar', on: :collection
  end
end
