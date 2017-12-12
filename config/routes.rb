Rails.application.routes.draw do
  resources :categories
  resources :channels
  devise_for :users, path_names: {
                       sign_in: 'login', sign_out: 'logout',
                   },
             sign_out_via: [:post, :delete]
  root to: 'channels#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
