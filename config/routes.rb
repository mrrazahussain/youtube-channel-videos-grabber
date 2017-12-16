Rails.application.routes.draw do
  resources :categories
  resources :channels
  resources :videos, only: :index
  get 'videos/:channel_id', to: 'videos#fetch_videos', as: 'fetch_videos'
  devise_for :users, path_names: {
                       sign_in: 'login', sign_out: 'logout',
                   },
             sign_out_via: [:post, :delete]
  root to: 'channels#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
