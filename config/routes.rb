Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  devise_for :users

  # Devise redirects to :user_root after sign up and sign in
  get '/posts' => 'posts#index', as: :user_root
  resources :posts
end
