Rails.application.routes.draw do
  devise_for :users, path_prefix: 'auth'
  root 'static_pages#home'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
