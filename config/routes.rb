Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users
  resources :users

  resources :positions do
    resources :candidates do
      resources :votes
    end
  end
end
