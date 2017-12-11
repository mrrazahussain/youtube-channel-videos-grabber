Rails.application.routes.draw do
  resources :categories
  resources :channels
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'channels#index'
end
