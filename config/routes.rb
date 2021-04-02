Rails.application.routes.draw do
 
  devise_for :users
  get 'alists/index'
  root to: "alists#index"
  resources :alists do
    resources :comments, only: :create
  end
end

