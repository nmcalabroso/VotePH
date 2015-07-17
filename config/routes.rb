Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users
  resources :users

  get '/candidates', to: 'candidates#all', as: 'candidates'
  get '/voters', to: 'users#voters', as: 'voters'
  get '/about', to: 'static_pages#about', as: 'about'

  resources :positions do
    resources :candidates do
      resources :votes
    end
  end
end
