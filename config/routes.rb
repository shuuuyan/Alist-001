Rails.application.routes.draw do
 
  devise_for :users
  get 'alists/index'
  root to: "alists#index"
  resources :alists do
    resources :comments, only: :create
  end
  resources :users, only: :show
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'  # ゲストログイン
  end
end

