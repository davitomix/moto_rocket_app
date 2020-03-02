Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  resources :users do
    member do
      get :following, :followers
    end
  end
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup'}
  resources :posts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
