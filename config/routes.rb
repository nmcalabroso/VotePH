Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users
  resources :users

  get '/candidates', to: 'candidates#all', as: 'candidates'

  resources :positions do
    resources :candidates do
      resources :votes
    end
  end
end
